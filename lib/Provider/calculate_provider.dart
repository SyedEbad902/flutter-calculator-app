import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculateProvider extends ChangeNotifier {
  bool equalPressed = false;
  var input = "";
  var output = "";
  bool getLength = false;

  void updateText(String newText) {
    input += newText;
    equalPressed = false;
    calculateResult();
    length();
    notifyListeners(); // Notify listeners whenever the string changes
  }

  length() {
    var length = input.length;
    if (length >= 12) {
      getLength = true;
      return getLength;
    }
  }

  calculateResult() {
    try {
      var newoutput = input.interpret().toString();
      if (newoutput.endsWith(".0")) {
        output = newoutput.substring(0, newoutput.length - 2);
      } else {
        output = newoutput;
      }
    } catch (e) {
      output = "";
    }
  }

  void updateOutput(String outputVal) {
    output = outputVal;
    notifyListeners(); // Notify listeners whenever the string changes
  }

  setValue(String value) {
    switch (value) {
      case "AC":
        input = "";
        output = '';
        getLength = false;
        notifyListeners();
        break;

      case "<":
        input = input.substring(0, input.length - 1);
        notifyListeners();
        break;

      case "=":
        computeValue();
        notifyListeners();
        break;
      case "e":
        updateText('e');
        break;
      case "sin":
        updateText('sin()');
        break;

      default:
    }
  }

  computeValue() {
    output = input.interpret().toString();
    var aa = "sin(2)";
    print(aa.interpret());
    if (output.endsWith(".0")) {
      output = output.substring(0, output.length - 2);
      equalPressed = true;
    } else {
      updateOutput(output);
      equalPressed = true;
    }
  }
}
