import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/cpf/view_model/cpf_view_model.dart';

import 'activable_text_component.dart';

class WarningCpfMessages extends StatelessWidget {
  const WarningCpfMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<CpfViewModel>();
    return (controller.isWarningActive
        ? ActivableText(
            text: "Digite corretamente o CPF",
            color: Colors.redAccent,
          )
        : SizedBox());
  }
}
