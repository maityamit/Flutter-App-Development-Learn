import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({Key? key}) : super(key: key);

  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {

  XFile? file;
  ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Image Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Center(
                child:file==null
                    ? Text("Image not found")
                    : Image.file(File(file!.path),fit: BoxFit.cover,)),
            ),
            ElevatedButton(
                onPressed: ()async{
                  final XFile? photo =
                  await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                  print("Image picked");
                  print(photo!.path);
                },
                child: Text("Pick Image"))

          ],
        ),
      ),
    );
  }
}

    
    