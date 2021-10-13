import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollBarImplementation extends StatelessWidget {
  const ScrollBarImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list1 = ScrollController();
    final list2 = ScrollController();
    final list3 = ScrollController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Scrollbar by default is not shown in flutter",
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                color: Theme.of(context).secondaryHeaderColor,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 80,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => Container(
                      height: 30,
                      width: 50,
                      color: Theme.of(context).colorScheme.primary,
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "You can make wrap you scrollable widget inside Scrollbar to make it visible. Also dont remember to change the isAlways shown property to true",
                style: TextStyle(height: 1.5),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(5),
                color: Theme.of(context).secondaryHeaderColor,
                width: double.infinity,
                height: 80,
                child: Scrollbar(
                  controller: list1,
                  isAlwaysShown: true,
                  child: ListView(
                    controller: list1,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      10,
                      (index) => Container(
                        height: 30,
                        width: 50,
                        color: Theme.of(context).colorScheme.primary,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                  "You can also increase its thickness, play around with the radius"),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(5),
                color: Theme.of(context).secondaryHeaderColor,
                width: double.infinity,
                height: 80,
                child: Scrollbar(
                  thickness: 6,
                  radius: Radius.circular(10),
                  controller: list2,
                  isAlwaysShown: true,
                  child: ListView(
                    controller: list2,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      10,
                      (index) => Container(
                        height: 30,
                        width: 50,
                        color: Theme.of(context).colorScheme.primary,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(5),
                color: Theme.of(context).secondaryHeaderColor,
                width: double.infinity,
                height: 400,
                child: Scrollbar(
                  radius: Radius.circular(10),
                  controller: list3,
                  isAlwaysShown: true,
                  child: ListView(
                    controller: list3,
                    shrinkWrap: true,
                    children: List.generate(
                      10,
                      (index) => Container(
                        height: 30,
                        width: 50,
                        color: Theme.of(context).colorScheme.primary,
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ScrollBarDescription extends StatelessWidget {
  const ScrollBarDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                """        
        To add a scrollbar to a ScrollView, wrap the scroll view widget in a Scrollbar widget.
        
        A scrollbar thumb indicates which portion of a ScrollView is actually visible.
        
        By default, the thumb will fade in and out as the child scroll view scrolls. When isAlwaysShown is true, the scrollbar thumb will remain visible without the fade animation. This requires that the ScrollController associated with the Scrollable widget is provided to controller, or that the PrimaryScrollController is being used by that Scrollable widget.
        
        If the scrollbar is wrapped around multiple ScrollViews, it only responds to the nearest ScrollView and shows the corresponding scrollbar thumb by default. The notificationPredicate allows the ability to customize which ScrollNotifications the Scrollbar should listen to.
        
        If the child ScrollView is infinitely long, the RawScrollbar will not be painted. In this case, the scrollbar cannot accurately represent the relative location of the visible area, or calculate the accurate delta to apply when dragging on the thumb or tapping on the track.""",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Syntax or Class definition",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("""
  const Scrollbar({
  Key? key,
  required this.child,
  this.controller,
  this.isAlwaysShown,
  this.showTrackOnHover,
  this.hoverThickness,
  this.thickness,
  this.radius,
  this.notificationPredicate,
  this.interactive,
  this.scrollbarOrientation,
}) : super(key: key);
        """),
            ],
          ),
        ),
      ),
    );
  }
}
