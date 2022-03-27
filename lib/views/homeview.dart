import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hamraahi/services/authentication_manager.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthenticationManager _authmanager = Get.find();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                _authmanager.logOut();
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.person,
              size: 30,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good morning",
                  style: GoogleFonts.abel(
                      textStyle: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: 12,
                  )),
                ),
                Text(
                  "Anila",
                  style: GoogleFonts.cabin(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 30, 40, 20),
            child: Text(
              "Help Needed?",
              style: GoogleFonts.alfaSlabOne(
                  textStyle: const TextStyle(
                      fontSize: 50, fontWeight: FontWeight.w400)),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Image.asset(
                "images/help_button.png",
                height: 200,
                width: 250,
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Text(
              "Press the button above to search for help",
              style: GoogleFonts.abel(
                  textStyle: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400)),
            ),
          ),
        ],
      ),
    );
  }
}
