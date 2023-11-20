import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool showPass = true;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _postalController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1,
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "Name",
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid name';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 15,
                  ),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "Email ID",
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Enter a valid Email ID';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 15,
                  ),
                  child: TextFormField(
                    controller: _contactController,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "Mobile",
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter a valid Number";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 15, top: 15),
                  child: TextFormField(
                    controller: _addressController,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "Address",
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid Address';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                  child: TextFormField(
                    controller: _stateController,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "State",
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid State';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                  child: TextFormField(
                    controller: _locationController,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "location",
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid location';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 15),
                  child: TextFormField(
                    controller: _postalController,
                    decoration: InputDecoration(
                      isDense: true,
                      labelText: "Postal code",
                    ),
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Enter a valid Postal code';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: showPass,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      isDense: true,
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
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(ColorT.themeColor),
                      shadowColor: Colors.teal[300],
                    ),
                    child: Text("Sign Up"),
                  ),
                ),
                TextButton(
                  child: Text("Already have an account? Login",
                      style: TextStyle(fontSize: 15, color: Colors.black45)),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
