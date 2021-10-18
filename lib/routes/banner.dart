import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class BannerImplementation extends StatelessWidget {
  const BannerImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Banner widget can be handy when you need to show a banner on top of any widget.",
                style: TextStyle(height: 1.5),
              ),
              const SizedBox(
                height: 30,
              ),
              Banner(
                message: "Exclusive",
                location: BannerLocation.topEnd,
                child: Container(
                  height: 100,
                  width: 200,
                  color: Theme.of(context).cardColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Banner(
                message: "Popular",
                location: BannerLocation.topStart,
                color: Theme.of(context).primaryColorLight,
                textStyle: Theme.of(context).textTheme.bodyText1!,
                child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    "assets/images/acm_logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BannerDescription extends StatelessWidget {
  const BannerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DefaultTextStyle(
          style: const TextStyle(height: 1.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Banner widget comes built-in with flutter API. It is somewhat similar to the debug banner what we are used to of seeing on the top-right corner on a flutter app in debug mode. It enables us to show a message or text on top of any other widget. ",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Syntax or Class Denfinition",
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 20,
              ),
              Text("""
const Banner(
{Key key,
Widget child,
@required String message,
TextDirection textDirection,
@required BannerLocation location,
TextDirection layoutDirection,
Color color: _kColor,
TextStyle textStyle: _kTextStyle}
)
              """)
            ],
          ),
        ),
      ),
    );
  }
}

class BannerCode extends CodeString {
  const BannerCode();
  @override
  String buildCodeString() {
    return """
    Banner(
      message: "Popular",
      location: BannerLocation.topStart,
      color: Theme.of(context).primaryColorLight,
      textStyle: Theme.of(context).textTheme.bodyText1!,
      child: Container(
        height: 200,
        width: 200,
        child: Image.asset(
          "assets/images/acm_logo.png",
          fit: BoxFit.cover,
        ),
      ),
    )
    """;
  }
}
