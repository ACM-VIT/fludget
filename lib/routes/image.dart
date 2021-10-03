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
    );
  }
}

class ImageWidgetDescription extends StatelessWidget {
  const ImageWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Text(
          'Image Description Here',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
