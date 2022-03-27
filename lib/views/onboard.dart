import 'package:flutter/material.dart';
import '../services/authentication_manager.dart';
import 'package:get/get.dart';
import 'authView.dart';
import 'homeview.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationManager _authManager = Get.find();

    return Obx(() {
      return _authManager.isLogged.value ? HomeView() : AuthView();
    });
  }
}
