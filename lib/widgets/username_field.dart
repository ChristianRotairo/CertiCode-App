import 'package:flutter/material.dart';

class UsernameField extends StatelessWidget {
  final TextEditingController controller;

  const UsernameField(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        obscureText: false,
        decoration: const InputDecoration(
          icon: Icon(Icons.person),
          hintText: 'Username',
        ),
        controller: controller,
        // add a validator using state if field is empty prompt a validation
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter a username';
          }
          return null;
        },
      ),
    );
  }
}
