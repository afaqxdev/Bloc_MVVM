part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
  @override
  List<Object> get props => [];
}

class EmailChange extends LoginEvent {
  const EmailChange({required this.email});
  final String email;
  @override
  List<Object> get props => [email];
}

class PasswordChange extends LoginEvent {
  const PasswordChange({required this.password});
  final String password;
  @override
  List<Object> get props => [password];
}

class LoginApiButton extends LoginEvent {}
