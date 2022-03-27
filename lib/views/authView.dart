import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './loginView.dart';
import './signupView.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            color: const Color.fromARGB(249, 236, 209, 209),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Expanded(child: Container()),
                  TabBar(tabs: [
                    Column(
                      children: const [
                        Text(
                          "Login",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "Create Account",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 15,
                        )
                      ],
                    )
                  ]),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[LoginView(), SignupView()],
        ),
      ),
    );
  }
}
