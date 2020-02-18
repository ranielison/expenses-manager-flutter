import 'package:flutter/material.dart';

class ChatBar extends StatelessWidget {
  final String label;
  final double value;
  final double percentage;

  ChatBar({
    this.label,
    this.value,
    this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'R\$ ${value.toStringAsFixed(2)}',
        ),
        SizedBox(height: 5),
        Container(
          height: 60,
          width: 10,
          child: null,
        ),
        SizedBox(height: 5),
        Text(label)
      ],
    );
  }
}
