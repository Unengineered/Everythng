extension StringExtension on String {
  String get inCaps => length > 0 ?'${this[0].toUpperCase()}${substring(1)}':'';

  String get allInCaps => toUpperCase();

  String get capitalizeFirstOfEach => replaceAll(RegExp(' +'), ' ').split(" ").map((str) => str.inCaps).join(" ");

  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  bool containsSpecialCharacter() {
    return  RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(this);
  }
}
