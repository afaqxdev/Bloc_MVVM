import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_project/bloc/bloc/login_bloc.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key, required this.passwordFocusdNode});
  final FocusNode passwordFocusdNode;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.password != previous.password,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          focusNode: passwordFocusdNode,
          decoration: const InputDecoration(
              helperText: "Enter Password", border: OutlineInputBorder()),
          onChanged: (value) {
            context.read<LoginBloc>().add(PasswordChange(password: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter Password';
            }
            if (value.isNotEmpty && value.length < 6) {
              return 'Password should be Greater then 6';
            }
            return null;
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
