

class Validation {
  static bool isNameValid(String name) {
    return name.trim().length >= 3;
  }


  static bool isEmailValid(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email.trim());
  }

  static bool isPasswordValid(String password) {
    return password.length >= 6;
  }
}