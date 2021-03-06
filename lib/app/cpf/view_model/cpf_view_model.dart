import 'package:flutter/material.dart';
import 'package:fteam_test/app/cpf/models/cpf_model.dart';

class CpfViewModel extends ChangeNotifier {
  //Properties
  TextEditingController cpfController = TextEditingController();
  bool isTextActive = false;
  bool isWarningActive = false;
  bool isValid = false;

  //Methods
  validate() {
    CPF cpf = CPF(cpfController.text);
    if (cpf.inputIsValid()) {
      isWarningActive = false;
      isTextActive = true;
      isValid = cpf.validateCpf();
      notifyListeners();
    } else {
      isTextActive = false;
      isWarningActive = true;
      notifyListeners();
    }
  }
}
