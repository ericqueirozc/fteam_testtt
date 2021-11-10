import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/cpf/controllers/cpf_controller.dart';

class ValidateCpfButtom extends StatelessWidget {
  const ValidateCpfButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CpfController controller = Modular.get<CpfController>();
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => controller.validate(),
        child: Text(
          "Validar",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
