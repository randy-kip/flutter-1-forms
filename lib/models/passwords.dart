class Passwords {
  String password = "";
  String confirmPassword = "";
  int length = 8;

  Passwords();

  bool nonEmpty() {
    return password.isNotEmpty && confirmPassword.isNotEmpty;
  }

  bool match() {
    return password == confirmPassword;
  }

  bool valid() {
    return password.length >= length;
  }
}
