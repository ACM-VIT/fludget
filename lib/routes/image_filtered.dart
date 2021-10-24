import 'dart:ui';
import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class ImageFilterImplementation extends StatefulWidget {
  const ImageFilterImplementation({Key? key}) : super(key: key);

  @override
  State<ImageFilterImplementation> createState() => _ImageFilterImplementationState();
}

class _ImageFilterImplementationState extends State<ImageFilterImplementation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("ImageFiltered Demo"),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4),
                    child: FlutterLogo(
                        size: 220,
                    ),
                )
              ],
            ),
          ),
        )
    );
  }

}
class ImageFilterDescription extends StatelessWidget {
  const ImageFilterDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        """Flutter provides an ImageFiltered, a low-level class that takes pixels and rearranges them. It applies an ImageFilter to its child. A filter operation to apply to a raster image.
        ImageFiltered will blur the images, text, and anything will be blurry. It also works on any matrix for transformation like scaling, translating, skewing, rotating, etc.""",
      ),
    );
  }
}

class ImageFilterCode extends CodeString {
  const ImageFilterCode();
  @override
  String buildCodeString() {
    return """body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageFiltered(
                    imageFilter: ImageFilter.blur( sigmaY: 4,sigmaX: 4),
                    child: Image.asset("https://cdn.dribbble.com/users/1622791/screenshots/11174104/flutter_intro.png")
                ),
              ],
            ),
          ),
        )""";
  }
}
