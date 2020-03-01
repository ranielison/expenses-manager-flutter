import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String label;
  final Function(String) onSubmited;
  final TextInputType keyboardType;

  AdaptativeTextField({
    this.textEditingController,
    this.label,
    this.onSubmited,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            child: CupertinoTextField(
              controller: textEditingController,
              keyboardType: keyboardType,
              onSubmitted: onSubmited,
              placeholder: label,
              padding: EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12,
              ),
            ),
          )
        : TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: label,
            ),
            keyboardType: keyboardType,
            onSubmitted: onSubmited,
          );
  }
}
