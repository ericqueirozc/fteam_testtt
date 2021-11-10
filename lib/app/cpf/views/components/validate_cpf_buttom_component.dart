import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/cpf/view_model/cpf_view_model.dart';

class ValidateCpfButtom extends StatelessWidget {
  const ValidateCpfButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<CpfViewModel>();
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
