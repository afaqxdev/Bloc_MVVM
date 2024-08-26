import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_project/bloc/bloc/login_bloc.dart';

class EmailPassword extends StatelessWidget {
  const EmailPassword({super.key, required this.emailFocusNode});
  final FocusNode emailFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (current, previous) => current.email != previous.email,
      builder: (context, state) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          focusNode: emailFocusNode,
          decoration: const InputDecoration(
              helperText: "Enter Email", border: OutlineInputBorder()),
          onChanged: (value) {
            context.read<LoginBloc>().add(EmailChange(email: value));
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter email';
            }

            return null;
          },
          onFieldSubmitted: (value) {},
        );
      },
    );
  }
}
