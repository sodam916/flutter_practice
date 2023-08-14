import 'package:get/get.dart';

class CalculatorController extends GetxController {
  var firstNum = 0.obs;
  var secondNum = 0.obs;
  var result = 0.obs;

  void calSum() {
    result.value = firstNum.value + secondNum.value;
  }
}
