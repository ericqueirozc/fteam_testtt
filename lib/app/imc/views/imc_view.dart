import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/imc/controllers/imc_controller.dart';

import 'components/calculate_Imc_button_component.dart';
import 'components/custom_text_field_component.dart';
import 'components/imc_result_component.dart';
import 'components/imc_result_text_component.dart';

class ImcView extends StatefulWidget {
  const ImcView({Key? key}) : super(key: key);

  @override
  _ImcViewState createState() => _ImcViewState();
}

class _ImcViewState extends State<ImcView> {
  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<ImcController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          child: Column(
            children: [
              CustomTextField(
                  onChanged: (value) =>
                      controller.peso = double.tryParse(value)!,
                  labelText: "Peso"),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                onChanged: (value) {
                  controller.altura = double.tryParse(value)!;
                },
                labelText: "Altura",
              ),
              SizedBox(
                height: 10,
              ),
              CalculateImcButtom(),
              SizedBox(
                height: 10,
              ),
              ImcResultText(),
              SizedBox(
                height: 10,
              ),
              ImcResult()
            ],
          ),
        ),
      ),
    );
  }
}