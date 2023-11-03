import 'package:danthal/views/bottom_nav_bar.dart';
import 'package:danthal/views/homepage/homepage.dart';
import 'package:danthal/views/registration/signup_page.dart';
import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool showPass = true;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.grey.shade400,
                  Colors.grey.shade200,
                  Colors.grey.shade50,
                  Colors.grey.shade200,
                  Colors.grey.shade400,
                ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 35, right: 35, top: 80, bottom: 20),
              child: TextFormField(
                cursorColor: Colors.teal[900],
                controller: usernameController,
                decoration: InputDecoration(
                  fillColor: Colors.teal[100],
                  labelText: 'Phone Number',
                ),
                textInputAction: TextInputAction.next,
                validator: (uname) {
                  if (uname!.isEmpty || !uname.contains('')) {
                    return 'Enter a valid Phone Number';
                  } else {
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 35, right: 35, top: 10, bottom: 20),
              child: TextFormField(
                cursorColor: Colors.teal[900],
                controller: passwordController,
                obscureText: showPass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (showPass) {
                            showPass = false;
                          } else {
                            showPass = true;
                          }
                        });
                      },
                      icon: Icon(
                        showPass == true
                            ? Icons.visibility_off
                            : Icons.visibility,
                      )),
                  labelText: "Password",
                ),
                textInputAction: TextInputAction.done,
                validator: (password) {
                  if (password!.isEmpty || password.length < 6) {
                    return "Enter a valid Password, length should be greater than 6";
                  } else {
                    return null;
                  }
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNav()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(ColorT.themeColor),
                  shadowColor: Colors.teal[300],
                ),
                child: Text("Login"),
              ),
            ),
            TextButton(
              child: Text("Don't have an account? Sign Up",
                  style: TextStyle(fontSize: 15, color: Colors.black45)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
