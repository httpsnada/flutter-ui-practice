class Validators {
  static String? isEmail(String? value) {
    final emailRegex = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    );
    // check null value in the first condition
    if (value == null || value.trim().isEmpty) {
      return "Email can't be empty";
    }
    if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email address";
    }

    return null;
  }

  static String? isPassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Password can't be empty";
    }

    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }
    return null;
  }
}
