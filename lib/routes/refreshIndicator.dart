import 'package:flutter/material.dart';

class MyRefreshIndicator extends StatefulWidget {
  const MyRefreshIndicator({Key? key}) : super(key: key);

  @override
  State<MyRefreshIndicator> createState() => _MyRefreshIndicatorState();
}

class _MyRefreshIndicatorState extends State<MyRefreshIndicator> {
  final _data = ["One", "Two", "Three", "Four", "Five", "Six"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Dragdown to change the order of the list."),
            ),
            Expanded(
              child: RefreshIndicator(
                child: ListView.builder(
                    itemCount: _data.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                          child: ListTile(
                            title: Text(
                              _data[index],
                              style: TextStyle(
                                fontWeight : FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                onRefresh: _refresh,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _refresh() async {
    await Future.delayed(Duration(seconds: 3));
    _data.shuffle();
    setState(() {});
  }
}

class MyRefreshIndicatorDesc extends StatelessWidget {
  const MyRefreshIndicatorDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          "A widget that supports the Material 'swipe to refresh' idiom. When the child's Scrollable descendant overscrolls, an animated circular progress indicator is faded into view. When the scroll ends, if the indicator has been dragged far enough for it to become completely opaque, the onRefresh callback is called",
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
