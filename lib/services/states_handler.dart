import 'package:get/get.dart';

class States extends GetxController {
  var showPassword = false.obs;
  var showPasswordSignup = false.obs;

  void changePassword() {
    showPassword.value = !showPassword.value;
  }

  void changePasswordSignup() {
    showPassword.value = !showPassword.value;
  }
}
