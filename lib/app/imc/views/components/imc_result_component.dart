import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/imc/view_model/imc_view_model.dart';

class ImcResult extends StatelessWidget {
  const ImcResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<ImcViewModel>();

    return AnimatedBuilder(
      animation: controller,
      builder: (context, widget) {
        return Text(controller.result != 0.0
            ? controller.result
            : "Informações invalidas.");
      },
    );
  }
}
