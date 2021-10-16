import 'package:flutter/material.dart';

class ClipPathImplementation extends StatelessWidget {
  const ClipPathImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ClipPath(
                  clipper: ClipPathClass(),
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "This is how you can use Clip Path with your custom path to clip any widget in flutter"
                        .toUpperCase(),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "By default the clip behaviour is antiAlias. This helps in smooth curves."),
            ),
            const SizedBox(
              height: 30,
            ),
            ClipPath(
              clipBehavior: Clip.hardEdge,
              clipper: ClipPathClass(),
              child: Image.asset(
                "assets/images/acm_logo.png",
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ClipPathDescription extends StatelessWidget {
  const ClipPathDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 15, height: 1.5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("A widget that clips its child using a path."),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Calls a callback on a delegate whenever the widget is to be painted. The callback returns a path and the widget prevents the child from painting outside the path.",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Syntax or Class definition",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                """
  const ClipPath({
  Key? key,
  this.clipper,
  this.clipBehavior = Clip.antiAlias,
  Widget? child,
}) : assert(clipBehavior != null),
     super(key: key, child: child);
              """,
              )
            ],
          ),
        ),
      ),
    );
  }
}
