import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String buttonText;
  final Function() function;
  const MainButton(
      {super.key, required this.buttonText, required, required this.function});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: function,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromRGBO(249, 157, 28, 1)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
        child: Text(
          buttonText,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}

class MainTextField extends StatelessWidget {
  final IconData iconData;
  final TextEditingController controller;
  const MainTextField(
      {super.key, required this.iconData, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: Icon(iconData),
      ),
    );
  }
}
