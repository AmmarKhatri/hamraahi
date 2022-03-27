import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hamraahi/services/states_handler.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignupView extends StatelessWidget {
  SignupView({Key? key}) : super(key: key);
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmpasswordcontroller =
      TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController gendercontroller = TextEditingController();
  String? phoneNumber;
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final States show = Get.put(States());
    return SingleChildScrollView(
      child: Form(
        key: _key,
        child: Column(
          children: [
            Image.asset(
              'images/handshake.png',
              height: 100,
              width: 150,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
              child: Row(
                children: const [
                  Text(
                    "Welcome to Hamraahi!",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Times new roman'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
              child: Text(
                "Join a safe community now to send or receive help in challenging times to fellow females.",
                style: GoogleFonts.adventPro(
                  textStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Times new roman'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 5),
              child: TextFormField(
                controller: usernamecontroller,
                validator: (value) {
                  if (value == null || value == '') {
                    return 'Please enter a username.';
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  labelText: 'Username',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailcontroller,
                validator: (value) {
                  if (value == null || value == "") {
                    return "This field cannot be empty";
                  } else if (!GetUtils.isEmail(value)) {
                    return "Not a valid email address";
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  labelText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                child: TextFormField(
                  controller: passwordcontroller,
                  validator: (value) {
                    value = passwordcontroller.text;
                    if (GetUtils.isNull(value)) {
                      return "Please enter password";
                    }
                    if (value.length < 10) {
                      return "Password must contain atleast 10 characters";
                    }
                  },
                  obscureText: !show.showPasswordSignup.value,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 10, color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    labelText: 'Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    suffixIcon: TextButton(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Icon(
                          Icons.remove_red_eye,
                          color: show.showPasswordSignup.value
                              ? Colors.pink
                              : Colors.grey,
                        ),
                      ),
                      onPressed: () {
                        show.changePasswordSignup();
                      },
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
                child: TextFormField(
                  controller: confirmpasswordcontroller,
                  validator: (value) {
                    value = passwordcontroller.text;
                    if (GetUtils.isNull(value)) {
                      return "Please enter password";
                    }
                    if (value.length < 10) {
                      return "Password must contain atleast 10 characters";
                    }
                  },
                  obscureText: !show.showPasswordSignup.value,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 10, color: Colors.black),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    labelText: 'Confirm Password',
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    suffixIcon: TextButton(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Icon(
                          Icons.remove_red_eye,
                          color: show.showPasswordSignup.value
                              ? Colors.pink
                              : Colors.grey,
                        ),
                      ),
                      onPressed: () {
                        show.changePasswordSignup();
                      },
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: emailcontroller,
                validator: (value) {
                  if (value == null || value == "") {
                    return "This field cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  labelText: 'Age',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: gendercontroller,
                validator: (value) {
                  if (value == null || value == "") {
                    return "This field cannot be empty";
                  } else if (!GetUtils.isEmail(value)) {
                    return "Not a valid email address";
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  labelText: 'Gender',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 5),
              child: IntlPhoneField(
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                initialCountryCode: 'PK',
                onChanged: (phone) {
                  phoneNumber = phone.completeNumber;
                  print(phone.completeNumber);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 0),
              child: Text(
                "By clicking on 'Continue' you are agreeing to our terms of use",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Times new roman'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 30, 35, 10),
              child: ButtonTheme(
                minWidth: double.infinity,
                child: MaterialButton(
                  color: const Color.fromARGB(248, 231, 99, 99),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Continue',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Times new roman'),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
