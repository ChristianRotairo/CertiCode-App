import 'package:flutter/material.dart';


class PasswordField extends StatelessWidget {
  final TextEditingController controller;

  const PasswordField(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
          icon: Icon(Icons.security),
          hintText: 'Password',
        ),
        controller: controller,
      ),
    );
  }
}
