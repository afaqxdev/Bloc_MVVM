// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_project/bloc/bloc/login_bloc.dart';
import 'package:flutter_bloc_project/utils/enum.dart';

import '../../../utils/flush_bar_snack.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.formKey});
  final formKey;
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (current, previous) =>
          current.postApiStaus != previous.postApiStaus,
      listener: (context, state) {
        if (state.postApiStaus == PostApiStaus.error) {
          FlushBarSnack.flushBarErrorMessage(state.meesage.toString(), context);
        }
        if (state.postApiStaus == PostApiStaus.success) {
          FlushBarSnack.flushBarSuccessMessage(
              state.meesage.toString(), context);
        }
        if (state.postApiStaus == PostApiStaus.loading) {
          FlushBarSnack.flushBarErrorMessage('Submit your Response', context);
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (current, previous) =>
            current.postApiStaus != previous.postApiStaus,
        builder: (context, state) {
          return ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.read<LoginBloc>().add(LoginApiButton());
                }
              },
              child: state.postApiStaus == PostApiStaus.loading
                  ? CircularProgressIndicator()
                  : const Text("Login"));
        },
      ),
    );
  }
}
