import 'package:calories_calc/app/app_variables.dart';
import 'package:calories_calc/presentation/pages/result/result_page.dart';
import 'package:calories_calc/presentation/widgets/app_bar_widget.dart';
import 'package:calories_calc/presentation/widgets/dialog_widget.dart';
import 'package:calories_calc/presentation/widgets/radio_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const AppBarWidget(label: "CalcLories", back: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Informe sua atividade:",
              style: Theme.of(context).textTheme.headline2
            ),
            const SizedBox(height: 10),
            Observer(
              builder: (context) {
                return RadioWidget(
                  value: "Sedentário",
                  subTitle: "Não pratica nenhum exercício",
                  groupValue: activityStore.activity,
                  onChanged: (val) {
                    activityStore.activity = val!;
                  }
                );
              }
            ),
            Observer(
              builder: (context) {
                return RadioWidget(
                  value: "Levemente ativo",
                  subTitle: "Exercícios de 1 a 3 dias na semana",
                  groupValue: activityStore.activity,
                  onChanged: (val) {
                    activityStore.activity = val!;
                  }
                );
              }
            ),
            Observer(
              builder: (context) {
                return RadioWidget(
                  value: "Ativo",
                  subTitle: "Exercícios de 3 a 5 dias na semana",
                  groupValue: activityStore.activity,
                  onChanged: (val) {
                    activityStore.activity = val!;
                  }
                );
              }
            ),
            Observer(
              builder: (context) {
                return RadioWidget(
                  value: "Muito ativo",
                  subTitle: "Exercícios de 6 a 7 dias na semana",
                  groupValue: activityStore.activity,
                  onChanged: (val) {
                    activityStore.activity = val!;
                  }
                );
              }
            ),
            Observer(
              builder: (context) {
                return RadioWidget(
                  value: "Atletas",
                  groupValue: activityStore.activity,
                  onChanged: (val) {
                    activityStore.activity = val!;
                  }
                );
              }
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none
        ),
        label: const Text("Resultado", style: TextStyle(fontSize: 18)),
        icon: const Icon(Icons.playlist_add_check_outlined, size: 30),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () async {
          if(activityStore.activity == "") {
            await showDialog(
              context: context,
              builder: (context) => DialogWidget(
                title: "Erro",
                subtitle: "Por favor, selecione seu nível de atividade.",
                primaryLabel: "Ok",
                primaryButton: () {
                  Navigator.pop(context);
                },
              )
            );
          } else {
            resultStore.setKcal();
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ResultPage()));
          }
        },
      ),
    );
  }
}