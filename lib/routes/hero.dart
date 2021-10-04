import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final int tag;
  const HeroWidget({Key? key, required this.tag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Column(
        children: [
          const SizedBox(height: 10),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SampleScreen(tag: hashCode))),
            child: Hero(
              tag: hashCode,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SampleScreen(tag: hashCode))),
            child: Hero(
              tag: hashCode + 1,
              child: Card(
                margin: const EdgeInsets.all(18),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                    " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                    " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                    " It has survived not only five centuries, but also the leap into electronic typesetting,"
                    " remaining essentially unchanged.",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Description Page
class HeroWidgetDescription extends StatelessWidget {
  const HeroWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hero animation between to screen demo',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class SampleScreen extends StatelessWidget {
  /// Sample Screen
  const SampleScreen({Key? key, required this.tag}) : super(key: key);
  final int tag;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text("Sample Screen"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: tag,
            child: CircleAvatar(
              radius: 100,
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.person,
                size: 100,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Hero(
            tag: tag + 1,
            child: Card(
              margin: const EdgeInsets.all(18),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                  " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                  " It has survived not only five centuries, but also the leap into electronic typesetting,"
                  " remaining essentially unchanged.",
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
