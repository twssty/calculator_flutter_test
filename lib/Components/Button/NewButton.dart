import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color color;

  const NewButton({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyle(
          fontSize: 30,
          color: Colors.white, // Set text color to white here
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: color, // Set the background color here
      ),
    );
  }
}
