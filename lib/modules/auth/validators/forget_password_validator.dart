import '../../../kernel/validator.dart';

class ForgetPasswordValidator extends Validator {
  ForgetPasswordValidator(this.phone);

  final String phone;

  @override
  bool validate() {
    return true;
  }
}
