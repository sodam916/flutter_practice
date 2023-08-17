import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculateBox extends StatelessWidget {
  const CalculateBox({
    super.key,
    required this.textController,
    required this.labelText,
    required this.changeNumFunction,
  });

  final TextEditingController textController;
  final String labelText;
  final void Function(String) changeNumFunction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: labelText,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: changeNumFunction,
        controller: textController,
      ),
    );
  }
}
