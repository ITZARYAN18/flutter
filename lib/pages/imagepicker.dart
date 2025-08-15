import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {

  final ImagePicker _picker = ImagePicker();

  XFile?file;

  List<XFile>? files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(

              color: Colors.grey.shade200,
              height: 200,
              width: double.infinity,
              child: Center(child:file == null?Text("Image Not Picked"):Image.file(File(file!.path),
                fit: BoxFit.fill,
              ),
              ),
            ),
            ElevatedButton(onPressed: () async{

              final XFile?photo = await _picker.pickImage(source: ImageSource.gallery);
              setState(() {
                file = photo;
              });
              print('Image Picked');
            }, child: Text('Pick Image')),

            ElevatedButton(onPressed: () async{

              final List<XFile> photos = await _picker.pickMultiImage();
              setState(() {
                files = photos;
              });
              print('Images Picked');
              for(int i = 0; i<= files!.length;i++){
                print(files![i].path);
              }
            }, child: Text('Pick Image'))
          ],
        ),
      ),
    );
  }
}
