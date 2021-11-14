import 'package:calories_calc/app/app_variables.dart';
import 'package:calories_calc/presentation/pages/activity/activity_page.dart';
import 'package:calories_calc/presentation/widgets/app_bar_widget.dart';
import 'package:calories_calc/presentation/widgets/dialog_widget.dart';
import 'package:calories_calc/presentation/widgets/radio_widget.dart';
import 'package:calories_calc/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class HomePage extends StatelessWidget {
  HomePage({ Key? key }) : super(key: key);

  final MaskTextInputFormatter _ageMask = MaskTextInputFormatter(mask: "###");
  final MaskTextInputFormatter _heightMask = MaskTextInputFormatter(mask: "#.##");

  final FocusNode ageFocus = FocusNode();
  final FocusNode weightFocus = FocusNode();
  final FocusNode heightFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const AppBarWidget(label: "CalcLories"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Descubra seu gasto calórico",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Theme.of(context).primaryColor
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Preencha os dados abaixo:",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.grey[400]!)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Observer(
                              builder: (context) {
                                return RadioWidget(
                                  value: "Masculino",
                                  groupValue: homeStore.sex,
                                  onChanged: (val) {
                                    homeStore.sex = val!;
                                  },
                                );
                              }
                            ),
                          ),
                          Expanded(
                            child: Observer(
                              builder: (context) {
                                return RadioWidget(
                                  value: "Feminino",
                                  groupValue: homeStore.sex,
                                  onChanged: (val) {
                                    homeStore.sex = val!;
                                  },
                                );
                              }
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 20,
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      "Sexo:",
                      style: TextStyle(
                       fontSize: 18,
                       color: Colors.grey[700]
                      )
                    ),
                  ),
                ),
              ],
            ),
            Observer(
              builder: (context) {
                return TextFieldWidget(
                  padding: const EdgeInsets.only(top: 20),
                  label: "Idade (Anos)",
                  hintText: "Ex. 30",
                  errorText: homeStore.ageError,
                  focusNode: ageFocus,
                  formatters: [_ageMask],
                  controller: homeStore.ageController,
                  keyboardType: TextInputType.number,
                  onChanged: (_) {
                    homeStore.ageError = null;
                  },
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(weightFocus);
                  },
                );
              }
            ),
            Observer(
              builder: (context) {
                return TextFieldWidget(
                  padding: const EdgeInsets.only(top: 20),
                  maxLength: 7,
                  label: "Peso (KG)",
                  hintText: "Ex. 75.5",
                  errorText: homeStore.weightError,
                  focusNode: weightFocus,
                  controller: homeStore.weightController,
                  keyboardType: TextInputType.number,
                  onChanged: (_) {
                    homeStore.weightError = null;
                  },
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(heightFocus);
                  },
                );
              }
            ),
            Observer(
              builder: (context) {
                return TextFieldWidget(
                  padding: const EdgeInsets.only(top: 20),
                  hintText: "Ex. 1.70",
                  label: "Altura (Metros)",
                  errorText: homeStore.heightError,
                  focusNode: heightFocus,
                  formatters: [_heightMask],
                  controller: homeStore.heightController,
                  keyboardType: TextInputType.number,
                  onChanged: (_) {
                    homeStore.heightError = null;
                  },
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).unfocus();
                  },
                );
              }
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none
        ),
        child: const Icon(Icons.arrow_forward),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () async {
          if(homeStore.sex == "") {
            await showDialog(
              context: context,
              builder: (context) => DialogWidget(
                title: "Erro",
                subtitle: "Por favor, selecione um sexo primeiro.",
                primaryLabel: "Ok",
                primaryButton: () {
                  Navigator.pop(context);
                },
              )
            );
          } else {
            homeStore.valido = true;

            try {
              int aux = int.parse(homeStore.ageController.text);
              if(aux <= 0 || aux > 130) {
                homeStore.ageError = "Idade Inválida";
                homeStore.valido = false;
              }
            } catch (e) {
              homeStore.ageError = "Idade Inválida";
              homeStore.valido = false;
            }

            try {
              double aux = double.parse(homeStore.weightController.text);
              if(aux <= 0 || aux > 200) {
                homeStore.weightError = "Peso Inválido";
                homeStore.valido = false;
              }
            } catch (e) {
              homeStore.weightError = "Peso Inválido, use \".\" para separar";
              homeStore.valido = false;
            }

            try {
              double aux = double.parse(homeStore.heightController.text);
              if(aux <= 0 || aux >= 3) {
                homeStore.heightError = "Altura Inválida";
                homeStore.valido = false;
              }
            } catch (e) {
              homeStore.heightError = "Altura Inválida";
              homeStore.valido = false;
            }

            if(homeStore.valido) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ActivityPage()));
            }
          }
        },
      ),
    );
  }
}