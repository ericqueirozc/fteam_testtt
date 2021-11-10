import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/cpf/view_model/cpf_view_model.dart';

import 'components/cpf_text_field_component.dart';
import 'components/result_message_cpf_component.dart';
import 'components/validate_cpf_buttom_component.dart';

class CpfView extends StatefulWidget {
  const CpfView({Key? key}) : super(key: key);

  @override
  _CpfViewState createState() => _CpfViewState();
}

class _CpfViewState extends State<CpfView> {
  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<CpfViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Validador de CPF"),
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return Form(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                CpfTextField(),
                SizedBox(
                  height: 10,
                ),
                ValidateCpfButtom(),
                SizedBox(
                  height: 20,
                ),
                ResultMessageCpf(),
              ],
            ),
          ));
        },
      ),
    );
  }
}

class WarningCpfMessages {}
