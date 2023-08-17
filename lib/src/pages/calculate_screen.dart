import 'package:add_app/src/components/calculate_box.dart';
import 'package:add_app/src/controller/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClaculateScreen extends GetView<CalculatorController> {
  ClaculateScreen({super.key});

  TextEditingController textareaA = TextEditingController();
  TextEditingController textareaB = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Column(
        children: [
          CalculateBox(
            changeNumFunction: controller.changeFirstNum,
            textController: textareaA,
            labelText: "첫번째 숫자를 입력해주세요",
          ),
          const SizedBox(
            height: 30,
          ),
          CalculateBox(
              changeNumFunction: controller.changeSecondNum,
              textController: textareaB,
              labelText: "두번째 숫자를 입력해주세요"),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("더하기"),
                onPressed: () => controller.calSum(),
              ),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                child: const Icon(Icons.refresh),
                onPressed: () {
                  controller.setResult(0);
                  textareaA.clear();
                  textareaB.clear();
                },
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Obx(() {
            print('rebuild : ${controller.firstNum}');
            return Text(
              "결과 ${controller.result}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
        ],
      ),
    );
  }
}
