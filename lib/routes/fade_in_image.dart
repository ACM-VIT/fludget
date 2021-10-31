import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class FadeInImageImplementation extends StatelessWidget {
  const FadeInImageImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "Fade in image can be used when you have to smoothly animate you images, after image is chached from internet",
                  style: TextStyle(height: 1.5),
                ),
                leading: FadeInImage.assetNetwork(
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  placeholder: "assets/images/acm_logo.png",
                  image:
                      "https://images.pexels.com/photos/4974920/pexels-photo-4974920.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "You can easily add you custom gif as a placeholder untill the image is cached",
                style: TextStyle(height: 1.5),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "You can also changed the curve and duration of animation",
                style: TextStyle(height: 1.5),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: FadeInImage.assetNetwork(
                  fadeOutDuration: const Duration(milliseconds: 700),
                  fadeInDuration: const Duration(seconds: 1),
                  fadeInCurve: Curves.bounceIn,
                  fadeOutCurve: Curves.bounceOut,
                  placeholder: "assets/gif/loading_gif.gif",
                  image:
                      'https://images.pexels.com/photos/4974912/pexels-photo-4974912.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FadeInImageDescription extends StatelessWidget {
  const FadeInImageDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
          child: DefaultTextStyle(
            style: TextStyle(height: 1.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "When displaying images using the default Image widget, you might notice they simply pop onto the screen as they’re loaded. This might feel visually jarring to your users.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Instead, wouldn’t it be nice to display a placeholder at first, and images would fade in as they’re loaded? Use the FadeInImage widget for exactly this purpose.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "FadeInImage works with images of any type: in-memory, local assets, or images from the internet.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Syntax or Class Definition",
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("""
        const FadeInImage({
        Key? key,
        required this.placeholder,
        this.placeholderErrorBuilder,
        required this.image,
        this.imageErrorBuilder,
        this.excludeFromSemantics = false,
        this.imageSemanticLabel,
        this.fadeOutDuration = const Duration(milliseconds: 300),
        this.fadeOutCurve = Curves.easeOut,
        this.fadeInDuration = const Duration(milliseconds: 700),
        this.fadeInCurve = Curves.easeIn,
        this.width,
        this.height,
        this.fit,
        this.alignment = Alignment.center,
        this.repeat = ImageRepeat.noRepeat,
        this.matchTextDirection = false,
      }) : assert(placeholder != null),
           assert(image != null),
           assert(fadeOutDuration != null),
           assert(fadeOutCurve != null),
           assert(fadeInDuration != null),
           assert(fadeInCurve != null),
           assert(alignment != null),
           assert(repeat != null),
           assert(matchTextDirection != null),
           super(key: key);
                """)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FadeInImgCode extends CodeString {
  const FadeInImgCode();
  @override
  String buildCodeString() {
    return """FadeInImage.assetNetwork(
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  placeholder: "assets/images/acm_logo.png",
                  image:
                      "https://images.pexels.com/photos/4974920/pexels-photo-4974920.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                ),
""";
  }
}
