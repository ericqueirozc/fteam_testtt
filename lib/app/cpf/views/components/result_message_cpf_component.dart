import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/cpf/controllers/cpf_controller.dart';

import 'activable_text_component.dart';

class ResultMessageCpf extends StatelessWidget {
  const ResultMessageCpf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<CpfController>();
    return controller.isTextActive
        ? ActivableText(
            text: controller.isValid ? "CPF Valido" : "CPF Invalido",
            color: Colors.black87,
          )
        : SizedBox();
  }
}
