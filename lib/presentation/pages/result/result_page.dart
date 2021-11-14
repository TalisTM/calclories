import 'dart:async';
import 'package:calories_calc/app/app_variables.dart';
import 'package:calories_calc/presentation/pages/home/home_page.dart';
import 'package:calories_calc/presentation/widgets/app_bar_widget.dart';
import 'package:calories_calc/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(label: "CalcLories", back: true),
      body: FutureBuilder(
      future: Future.delayed(const Duration(seconds: 1)),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Center(
              child: SizedBox(
                height: 70,
                width: 70,
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                  strokeWidth: 8,
                ),
              )
            );
          default:
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/fireboll.png',
                        height: 80,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Seu consumo diário de calorias é de:",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Theme.of(context).primaryColor
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Observer(
                            builder: (context) {
                              return Text.rich(
                                TextSpan(
                                  text: resultStore.kcal.toStringAsFixed(0),
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "kCal",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context).primaryColor
                                      ),
                                    )
                                  ]
                                )
                              );
                            }
                          ),
                        ],
                      ),
                    ],
                  ),
                  ButtonWidget(
                    label: "Voltar para o início",
                    onPressed: () {
                      homeStore.resetDatas();
                      activityStore.resetDatas();
                      Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                        (route) => false
                      );
                    },
                  ),
                ],
              ),
            );
        } 
      }
      )
    );
  }
}