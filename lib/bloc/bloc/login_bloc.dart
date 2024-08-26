import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_project/repository/auth/auth_repo.dart';

import '../../utils/enum.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository;

  LoginBloc({required this.loginRepository}) : super(const LoginState()) {
    on<EmailChange>(_onEmailChange);
    on<PasswordChange>(_onPasswordChange);
    on<LoginApiButton>(_onApiButtonOnPress);
  }

  void _onEmailChange(EmailChange event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChange(PasswordChange event, Emitter<LoginState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onApiButtonOnPress(
      LoginApiButton event, Emitter<LoginState> emit) async {
    Map data = {"email": state.email, "password": state.password};
    emit(state.copyWith(postApiStaus: PostApiStaus.loading));

    await loginRepository.loginApi(data).then((value) {
      if (value.error.isNotEmpty) {
        emit(state.copyWith(
            message: value.error.toString(), postApiStaus: PostApiStaus.error));
      } else {
        emit(state.copyWith(
            message: "Login SuccesFull", postApiStaus: PostApiStaus.success));
      }
    }).onError(
      (error, stackTrace) {
        emit(state.copyWith(
            message: error.toString(), postApiStaus: PostApiStaus.error));
      },
    );
  }
}
