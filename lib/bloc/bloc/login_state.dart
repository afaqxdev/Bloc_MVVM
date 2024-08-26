part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState(
      {this.email = '',
      this.password = '',
      this.meesage = '',
      this.postApiStaus = PostApiStaus.initial});
  final String email;
  final String password;
  final String meesage;
  final PostApiStaus postApiStaus;

  LoginState copyWith({
    String? email,
    String? password,
    String? message,
    PostApiStaus? postApiStaus,
  }) {
    return LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
        // ignore: unnecessary_this
        meesage: message ?? this.meesage,
        postApiStaus: postApiStaus ?? this.postApiStaus);
  }

  @override
  List<Object> get props => [email, password, postApiStaus, meesage];
}
