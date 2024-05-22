import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); 

  final String text;

  @override
  Widget build(BuildContext context) { // Specify the type for 'context'
    return Text(
      text, // This is where the text gets displayed
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}

