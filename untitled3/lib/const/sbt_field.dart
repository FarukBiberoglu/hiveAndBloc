import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SbtTextield extends StatelessWidget {
   SbtTextield({super.key,
  required this.label,
    this.klavyeNumber=false,
    required this.controller

  });
    final TextEditingController controller;
    final String label;
    bool klavyeNumber;



  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8),
    child: TextField(
      keyboardType: klavyeNumber ? TextInputType.number : TextInputType.multiline,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
        ),
        label: Text(label),
      ),
    ),
    );

  }
}
