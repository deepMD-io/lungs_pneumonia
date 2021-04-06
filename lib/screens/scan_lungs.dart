import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';

class OpenGallery extends StatefulWidget {
  @override
  _OpenGalleryState createState() => _OpenGalleryState();
}

class _OpenGalleryState extends State<OpenGallery> {
  List _outputs;
  File _image;
  bool _loading = false;
  int _color = 0xffc248bd;

  @override
  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Scan Photo from Gallery',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: Color(0xfff7941d),
          ),
        ),
      ),
      body: _loading
          ? Container(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            )
          : Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _image == null
                      ? Container()
                      : Image.file(_image,
                          color: Colors.grey,
                          colorBlendMode: BlendMode.saturation),
                  SizedBox(
                    height: 20,
                  ),
                  _outputs != null
                      ? Text(
                          "Result: " + "${_outputs[0]["label"]}",
                          style: TextStyle(
                            color: Color(_color),
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : Container()
                ],
              ),
              decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage("assets/images/back1.png"),
                    fit: BoxFit.cover),
              ),
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: pickImage,
        icon: Icon(Icons.remove_red_eye),
        label: Text("Start"),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xfff7941d),
      ),
    );
  }

  pickImage() async {
    var image =
        await ImagePicker.pickImage(source: ImageSource.gallery) as File;
    if (image == null) return null;
    setState(() {
      _loading = true;
      _image = image as File;
    });

    classifyImage(_image);
  }

  classifyImage(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 2,
      threshold: 0.1,
      imageMean: 125.5,
      imageStd: 125.5,
    );

    setState(() {
      _loading = false;
      _outputs = output;
      if (_outputs[0]["index"] == 0) {
        _color = 0xff006400; //green
      } else if (_outputs[0]["index"] == 1) {
        _color = 0xffff0000; //red
      } else {
        print("Error!");
      }
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/tflite/model_unquant2.tflite",
      labels: "assets/tflite/labels2.txt",
    );
  }
}
