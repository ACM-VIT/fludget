import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class FractionalTranslationImplementation extends StatelessWidget {
  const FractionalTranslationImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.network(
                'https://i.pinimg.com/originals/fa/0c/05/fa0c05778206cb2b2dddf89267b7a31c.jpg',
              ),
              Text('Image before fractional translation being applied'),
              SizedBox(
                height: 10,
              ),
              FractionalTranslation(
                child: Image.network(
                  'https://i.pinimg.com/originals/fa/0c/05/fa0c05778206cb2b2dddf89267b7a31c.jpg',
                ),
                translation: Offset(0.5, 0),
              ),
              Text('Image after translation being applied')
            ],
          ),
        ),
      ),
    );
  }
}

class FractionalTranslationDescription extends StatelessWidget {
  const FractionalTranslationDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                  "FractionalTranslation is a widget that applies translation to its child before the child is painted. Unlike Transform.translate that applies absolute offset, this widget applies an Offset that's scaled to the size of its child. Below are some examples of how to use the widget.")
            ],
          ),
        ),
      ),
    );
  }
}

class FractionalTranslationCode extends CodeString {
  const FractionalTranslationCode();
  @override
  String buildCodeString() {
    return """FractionalTranslation(
                child: Image.network(
                  'https://i.pinimg.com/originals/fa/0c/05/fa0c05778206cb2b2dddf89267b7a31c.jpg',
                ),
                translation: Offset(0.5, 0),
              )""";
  }
}
