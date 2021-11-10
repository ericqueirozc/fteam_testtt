import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/imc/controllers/imc_controller.dart';

class CalculateImcButtom extends StatelessWidget {
  const CalculateImcButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<ImcController>();

    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () => controller.calculateImc(),
        child: Text(
          "Calcular",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
