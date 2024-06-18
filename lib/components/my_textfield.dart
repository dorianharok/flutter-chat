import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.text,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            fillColor: Theme.of(context).colorScheme.secondary,
            filled: true,
            hintText: text,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            )),
      ),
    );
  }
}
