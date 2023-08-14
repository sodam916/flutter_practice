import 'package:add_app/src/controller/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ClaculateScreen extends StatelessWidget {
  const ClaculateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CalculatorController calculatorController = Get.put(CalculatorController());
    return Container(
      height: 300,
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "첫번째 숫자를 입력해주세요",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (value) => calculatorController.firstNum.value =
                    int.tryParse(value) ?? 0),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 40,
            child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "두번째 숫자를 입력해주세요",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                onChanged: (value) => calculatorController.secondNum.value =
                    int.tryParse(value) ?? 0),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: Text("더하기"),
            onPressed: () => calculatorController.calSum(),
          ),
          SizedBox(
            height: 30,
          ),
          Obx(
            () => Text(
              "결과 ${calculatorController.result}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
