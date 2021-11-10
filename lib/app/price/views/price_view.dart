import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/price/controllers/price_controller.dart';

import 'components/custom_form_field_component.dart';

class PriceView extends StatefulWidget {
  const PriceView({Key? key}) : super(key: key);

  @override
  _PriceViewState createState() => _PriceViewState();
}

class _PriceViewState extends State<PriceView> {
  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<PriceController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Price de Moedas"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            CustomTextField(
              controller: controller.realController,
              onChanged: (value) {
                value == ""
                    ? controller.clearFields()
                    : controller.realToDollarAndEuro(double.parse(value));
              },
              labelText: "Real",
            ),
            SizedBox(height: 10),
            CustomTextField(
              onChanged: (value) {
                value == ""
                    ? controller.clearFields()
                    : controller.dollarToRealAndEuro(double.parse(value));
              },
              controller: controller.dollarController,
              labelText: "Dolar",
            ),
            SizedBox(height: 10),
            CustomTextField(
              onChanged: (value) {
                value == ""
                    ? controller.clearFields()
                    : controller.euroToRealAndDollar(double.parse(value));
              },
              controller: controller.euroController,
              labelText: "Euro",
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
