  import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../theme/colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<String> base64Images = [];
  File? _pickedImage;

  void selectImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      if (kDebugMode) {
        print('Image picked: ${pickedImage.path}');
      }
      setState(() {
        _pickedImage = File(pickedImage.path);
      });
      convertImageToBase64();
    }
  }

  void convertImageToBase64() async {
    if (_pickedImage != null) {
      final bytes = await _pickedImage!.readAsBytes();
      final String base64Image = "data:image/;base64,${base64Encode(bytes)}";
      if (kDebugMode) {
        print('Base64 Image: $base64Image');
      }
      setState(() {
        base64Images.add(base64Image);
        if (kDebugMode) {
          print(base64Images);
        }
      });
    }
  }

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 35, right: 35, top: 20, bottom: 20),
              child: Stack(
                children: [
                  _pickedImage != null
                      ? CircleAvatar(
                          radius: 50,
                          backgroundImage: FileImage(_pickedImage!),
                        )
                      : CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage("assets/profile_avatar.png"),
                        ),
                  IconButton(
                    onPressed: () {
                      selectImage();
                    },
                    icon: Icon(Icons.add_a_photo,
                        color: Color(ColorT.themeColor)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 35, right: 35, top: 20, bottom: 20),
              child: TextFormField(
                controller: firstnameController,
                decoration: InputDecoration(
                  labelText: "First Name",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a valid name';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 35, right: 35, top: 20, bottom: 20),
              child: TextFormField(
                controller: lastnameController,
                decoration: InputDecoration(
                  labelText: "Last Name",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a valid name';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 35, right: 35, top: 20, bottom: 40),
              child: TextFormField(
                controller: emailIdController,
                decoration: InputDecoration(
                  labelText: "Email Id ",
                ),
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Enter a valid Email ID';
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35, top: 50),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(ColorT.themeColor),
                    minimumSize: Size.fromHeight(50),
                  ),
                  child: Text("Submit", style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
