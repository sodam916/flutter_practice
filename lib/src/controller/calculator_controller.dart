import 'package:get/get.dart';

class CalculatorController extends GetxController {
  int firstNum = 0;
  int secondNum = 0;
  var result = 0.obs;

  void calSum() {
    setResult(firstNum + secondNum);
  }

  void setResult(int value) {
    result(value);
  }

  void changeFirstNum(String firstNumber) {
    firstNum = int.tryParse(firstNumber) ?? 0;
  }

  void changeSecondNum(String secondNumber) {
    secondNum = int.tryParse(secondNumber) ?? 0;
  }
}
