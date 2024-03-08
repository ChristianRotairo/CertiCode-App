import 'package:certicode_app/bloc/login_bloc.dart';
import 'package:certicode_app/bloc/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/login_button.dart';
import '../widgets/password_field.dart';
import '../widgets/username_field.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginBloc(),
        child: _LoginForm(),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _usernameController = TextEditingController();
    final _passwordController = TextEditingController();

    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccessful) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Successfully Logged in')),
          );
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error)),
          );
        }
      },
      builder: (context, state) {
        return Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UsernameField(_usernameController),
                PasswordField(_passwordController),
                LoginButton(
                   _usernameController.text,
                 _passwordController.text, onPressed: () {  },
                ),
                if (state is LoginLoading)
                  const Center(child: CircularProgressIndicator()),
              ],
            ),
          ),
        );
      },
    );
  }
}
