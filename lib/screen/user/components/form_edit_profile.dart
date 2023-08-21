import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../constants.dart';

class FormEditProfile extends StatefulWidget {
  const FormEditProfile({
    super.key,
  });

  @override
  State<FormEditProfile> createState() => _FormEditProfileState();
}

class _FormEditProfileState extends State<FormEditProfile> {
  File? _image;

  Future getImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;

    final temporaryImage = File(image.path);

    setState(() {
      _image = temporaryImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            width: 154,
            height: 154,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: kGrayColor, borderRadius: BorderRadius.circular(100)),
            child: Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: _image != null
                    ? Image.file(
                        _image!,
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      )
                    : Image.asset('assets/images/user_demo.jpg',
                        fit: BoxFit.cover, width: 150, height: 150),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(25)),
                  child: IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return Wrap(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(24),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: ElevatedButton.icon(
                                            onPressed: () {
                                              getImage(ImageSource.gallery);
                                              Navigator.of(context).pop();
                                            },
                                            icon: const Icon(
                                                Icons.photo_album_outlined),
                                            label: const Text('Dari Gallery'),
                                          ),
                                        ),
                                        const SizedBox(width: 16),
                                        Expanded(
                                          child: ElevatedButton.icon(
                                            onPressed: () {
                                              getImage(ImageSource.camera);
                                              Navigator.of(context).pop();
                                            },
                                            icon: const Icon(
                                                Icons.camera_alt_outlined),
                                            label: const Text('Dari Camera'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              );
                            });
                      },
                      icon: const Icon(
                        Icons.camera_alt_outlined,
                        color: kBackGroundColor,
                      )),
                ),
              )
            ]),
          ),
          const SizedBox(height: 24),
          TextFormField(
            style: const TextStyle(fontSize: 16),
            decoration: const InputDecoration(
                fillColor: kGrayColor,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                hintText: "Nama Lengkap",
                prefixIcon: Icon(
                  Icons.person_2_outlined,
                  color: kPlaceHolderTextColor,
                )),
            onChanged: (value) {},
          ),
          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(fontSize: 16),
            decoration: const InputDecoration(
                fillColor: kGrayColor,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                hintText: "Email",
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: kPlaceHolderTextColor,
                )),
            onChanged: (value) {},
          ),
          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.phone,
            style: const TextStyle(fontSize: 16),
            decoration: const InputDecoration(
                fillColor: kGrayColor,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                hintText: "No Handphone",
                prefixIcon: Icon(
                  Icons.call_outlined,
                  color: kPlaceHolderTextColor,
                )),
            onChanged: (value) {},
          ),
          const SizedBox(height: 20),
          TextFormField(
            style: const TextStyle(fontSize: 16),
            decoration: const InputDecoration(
                fillColor: kGrayColor,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                hintText: "Kota",
                prefixIcon: Icon(
                  Icons.location_city_outlined,
                  color: kPlaceHolderTextColor,
                )),
            onChanged: (value) {},
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Update Profile',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
