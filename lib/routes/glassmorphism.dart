import 'dart:ui';

import 'package:flutter/material.dart';

class GlassmorphismImplementation extends StatelessWidget {
  const GlassmorphismImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double blurRadius = 24;
    final double blurSigma = blurRadius * 0.57735 + 0.5;

    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            "https://img.freepik.com/free-vector/gradient-liquid-shapes-effect-background_23-2148275809.jpg?size=626&ext=jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                child: BackdropFilter(
                  filter:
                      ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 2,
                        color: Colors.white.withOpacity(0.15),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "GLASSMORPHISM",
                          style:
                              Theme.of(context).textTheme.headline3?.copyWith(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                        ),
                        Text(
                          "Glassmorphism Effect in Flutter",
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.w100,
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GlassmorphismDescription extends StatelessWidget {
  const GlassmorphismDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        'Glassmorphism is a term used to describe UI design that emphasises light or dark objects, placed on top of colourful backgrounds. A background-blur is placed on the objects which allows the background to shine through – giving it the impression of frosted glass.',
      ),
    );
  }
}
