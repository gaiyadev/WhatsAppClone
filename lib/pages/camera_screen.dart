import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _image == null ? Text('No image selected.') : Image.file(_image),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(50.9),
        child: FloatingActionButton(
          onPressed: getImage,
          tooltip: 'Pick Image',
          child: Icon(
            Icons.add_a_photo,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
