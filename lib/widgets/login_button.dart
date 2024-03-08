import 'package:certicode_app/bloc/login_bloc.dart';
import 'package:certicode_app/bloc/login_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class LoginButton extends StatelessWidget {
  final String username;
  final String password;

  const LoginButton(this.username, this.password, {Key? key, required Null Function() onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<LoginBloc>().add(LoginStarted(username: username, password: password));
      },
      child: const Text('Login'),
    );
  }
}

