String? emailValidator(String? email) {
  final emailRegex = RegExp(r'^([A-Za-z]|[0-9])+$');
  final emailValidate = email;

  if (email == null || email.isEmpty) {
    return 'Digite seu email';
  }

  if (!emailRegex.hasMatch(emailValidate!)) {
    return 'Digite um mail valido';
  }

  return null;
}

String? passwordValidator(String? password) {
  if (password == null || password.isEmpty) {
    return 'Digite sua senha';
  }

  if (password.length < 6) {
    return 'Digite uma senha com pelo menos 6 aracteres';
  }

  return null;
}

String? nameValidator(String? name) {
  if (name == null || name.isEmpty) {
    return 'Digite um nome';
  }

  return null;
}
