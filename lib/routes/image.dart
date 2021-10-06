import 'package:flutter/material.dart';

class ImageSample extends StatelessWidget {
  const ImageSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Image"),
      // ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Image from assets:",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset("assets/images/meme.png"),
              SizedBox(height: 15.0),
              Text(
                "Image from internet:",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image(
                image: NetworkImage(
                    "https://uploads-ssl.webflow.com/5ee12d8e99cde2e20255c16c/5ef24ca36ab1f5eda546e719_flutter-meme-guarantee-it.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageWidgetDescription extends StatelessWidget {
  const ImageWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        'A widget that displays an image.\n\n'
        'Several constructors are provided for the various ways that an image can be specified:\n\n'
        '• \tnew Image, for obtaining an image from an ImageProvider.\n\n'
'• \tnew Image.asset, for obtaining an image from an AssetBundle using a key.\n\n'
'• \tnew Image.network, for obtaining an image from a URL.\n\n'
'• \tnew Image.file, for obtaining an image from a File.\n\n'
'• \tnew Image.memory, for obtaining an image from a Uint8List.\n',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
