import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_project/main.dart';
import 'package:flutter_bloc_project/views/login/widget/widgets.dart';

import '../../bloc/bloc/login_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailFocusNode = FocusNode();

  final passwordFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();
  late LoginBloc loginBloc;
  @override
  void initState() {
    loginBloc = LoginBloc(loginRepository: getit());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: BlocProvider(
          create: (_) => loginBloc,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  EmailPassword(
                    emailFocusNode: emailFocusNode,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PasswordTextField(
                    passwordFocusdNode: passwordFocusNode,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  LoginButton(
                    formKey: _formKey,
                  )
                ],
              ),
            ),
          )),
    );
  }
}
