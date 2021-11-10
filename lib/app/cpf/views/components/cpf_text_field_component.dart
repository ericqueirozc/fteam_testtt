import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/cpf/controllers/cpf_controller.dart';
import 'package:fteam_test/app/cpf/views/formatters/cpf_formatter.dart';

class CpfTextField extends StatelessWidget {
  const CpfTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<CpfController>();

    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(14),
        FilteringTextInputFormatter.digitsOnly,
        CpfTextFormatter()
      ],
      controller: controller.cpfController,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: "CPF"),
    );
  }
}
