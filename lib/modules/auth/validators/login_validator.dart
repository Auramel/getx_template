import '../../../kernel/validator.dart';

class LoginValidator extends Validator {
  LoginValidator({
    required this.login,
    required this.password,
  });

  final String login;
  final String password;

  @override
  bool validate() {
    return true;
  }
}
