import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  VoidCallback onPressed;

  CustomButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        textStyle: MaterialStateProperty.all(
          const TextStyle(color: Colors.white, fontSize: 16),
        ),
        minimumSize: MaterialStateProperty.all(
          Size(MediaQuery.of(context).size.width / 2.5, 50),
        ),
      ),
      child: Text(buttonName),
    );
  }
}
