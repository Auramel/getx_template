import '../../../kernel/validator.dart';

class RegisterValidator extends Validator {
  RegisterValidator({
    required this.login,
    required this.password,
    required this.phone,
  });

  final String login;
  final String password;
  final String phone;

  @override
  bool validate() {
    return true;
  }
}
