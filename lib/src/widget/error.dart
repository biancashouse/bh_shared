import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  final String flutterType;
  final Color color;
  final double? size;
  final String? errorMsg;

  const Error(this.flutterType,
      {this.color = Colors.red, this.size, this.errorMsg, required super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      textStyle: const TextStyle(fontFamily: 'monospace', fontSize: 12),
      child: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Text(flutterType),
              Icon(Icons.error, color: color, size: size),
              if (errorMsg != null)
                Text(
                  errorMsg!,
                  style: TextStyle(color: Colors.red),
                )
            ],
          )
        ]),
      ),
    );
  }
}
