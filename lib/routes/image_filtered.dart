import 'dart:ui';
import 'dart:typed_data';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Blur Image filtered demo",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  ),
                ),
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 4),
                  child: FlutterLogo(
                    size: 220,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Floating Image filtered demo:",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  ),
                ),
                ImageFiltered(
                  imageFilter: ImageFilter.matrix(
                  Float64List.fromList([
                    1,0,0,0,
                    0,1,0,0,
                    0,1,1,1,
                    1,0,0,1
                    ]),
                  ),
                  child: FlutterLogo(
                    size: 220,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Rotation Image filtered demo:",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  ),
                ),
                ImageFiltered(
                  imageFilter: ImageFilter.matrix(
                    Matrix4.rotationZ(0.10).storage,
                  ),
                  child: FlutterLogo(
                    size: 220,
                  ),
                ),
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
    return
        """Flutter provides an ImageFiltered, a low-level class that takes pixels and rearranges them. It applies an ImageFilter to its child. A filter operation to apply to a raster image.
        ImageFiltered will blur the images, text, and anything will be blurry. It also works on any matrix for transformation like scaling, translating, skewing, rotating, etc.""";
  }
}

class ImageFilterCode extends CodeString {
  const ImageFilterCode();
  @override
  String buildCodeString() {
    return """body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Blur Image filtered demo",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  ),
                ),
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 4),
                  child: FlutterLogo(
                    size: 220,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Floating Image filtered demo:",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  ),
                ),
                ImageFiltered(
                  imageFilter: ImageFilter.matrix(
                  Float64List.fromList([
                    1,0,0,0,
                    0,1,0,0,
                    0,1,1,1,
                    1,0,0,1
                    ]),
                  ),
                  child: FlutterLogo(
                    size: 220,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Rotation Image filtered demo:",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  ),
                ),
                ImageFiltered(
                  imageFilter: ImageFilter.matrix(
                    Matrix4.rotationZ(0.10).storage,
                  ),
                  child: FlutterLogo(
                    size: 220,
                  ),
                ),
              ],
            ),
          ),
        )""";
  }
}
