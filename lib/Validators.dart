import 'package:form_field_validator/form_field_validator.dart';

MultiValidator schoolMailValidator() {
  return MultiValidator([
    EmailValidator(errorText: "Invalid Email"),
    RequiredValidator(errorText: "Please enter your email"),
    PatternValidator('esi-sba.dz',
        errorText: 'Please use your school email')
  ]);
}

MultiValidator passwordValidator() {
  return MultiValidator([
    MinLengthValidator(6,
        errorText: "Your password must be at least 6 caracters"),
    MaxLengthValidator(15,
        errorText:
        "Your password can't be longer than 15 caracters"),
    RequiredValidator(errorText: "Password is required"),
  ]);
}

MultiValidator fullNameValidator() {
  return MultiValidator([
    RequiredValidator(errorText: "This field is required"),
    PatternValidator(r"/^[a-z ,.'-]+$/i", errorText: "Please enter a valid name")
  ]);
}