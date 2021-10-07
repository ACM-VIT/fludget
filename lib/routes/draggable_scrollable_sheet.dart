import 'package:fludget/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DraggableScrollSheet extends StatelessWidget {
  const DraggableScrollSheet({Key? key}) : super(key: key);
  final String imageUrl =
      "https://images.unsplash.com/photo-1568605114967-8130f3a36994?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG91c2V8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Example of how to use Draggable Scrollable Sheet in Flutter",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
              maxChildSize: 0.7,
              minChildSize: 0.3,
              initialChildSize: 0.3,
              builder: (context, controller) {
                return _houseListView(controller);
              })
        ],
      ),
    );
  }

  ClipRRect _houseListView(ScrollController controller) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: Colors.white70,
        child: ListView.builder(
          controller: controller,
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              title: Text("House ${index + 1}"),
            );
          },
        ),
      ),
    );
  }
}

class DraggableScrollSheetDesc extends StatelessWidget {
  const DraggableScrollSheetDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: DefaultTextStyle(
            style: TextStyle(
              color: Colors.white,
              height: 1.3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Draggable Scrollable Sheet:",
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "\t\t\t\t\t\tDraggable Scrollable sheet is a container for a Scrollable that responds to drag gestures by resizing the scrollable until a limit is reached, and then scrolling.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Class definition / Syntax:",
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "const DraggableScrollableSheet({\nKey? key,\nthis.initialChildSize = 0.5,\nthis.minChildSize = 0.25,\nthis.maxChildSize = 1.0,\nthis.expand = true,\nrequired this.builder,\n})  : assert(initialChildSize != null),\nassert(minChildSize != null),\nassert(maxChildSize != null),\nassert(minChildSize >= 0.0),\nassert(maxChildSize <= 1.0),\nassert(minChildSize <= initialChildSize),\nassert(initialChildSize <= maxChildSize),\nassert(expand != null),\nassert(builder != null),\nsuper(key: key);",
                ),
                const SizedBox(height: 20),
                Text(
                  "Explanation",
                  style: TextStyle(fontSize: 22),
                ),
                const SizedBox(height: 10),
                Text(
                  "This widget can be dragged along the vertical axis between its minChildSize, which defaults to 0.25 and maxChildSize, which defaults to 1.0. These sizes are percentages of the height of the parent container.",
                ),
                const SizedBox(height: 10),
                Text(
                  "The widget will initially be displayed at its initialChildSize which defaults to 0.5, meaning half the height of its parent. Dragging will work between the range of minChildSize and maxChildSize (as percentages of the parent container's height) as long as the builder creates a widget which uses the provided ScrollController. If the widget created by the ScrollableWidgetBuilder does not use the provided ScrollController, the sheet will remain at the initialChildSize.",
                ),
                const SizedBox(height: 10),
                Text(
                  "By default, the widget will expand its non-occupied area to fill available space in the parent. If this is not desired, e.g. because the parent wants to position sheet based on the space it is taking, the expand property may be set to false.",
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "For implementation, look at the implementation tab\n",
                  style: TextStyle(color: Colors.white60),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
