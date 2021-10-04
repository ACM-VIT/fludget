import 'package:flutter/material.dart';

class ReOrderableListViewSample extends StatelessWidget {
  const ReOrderableListViewSample({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final List<int> _items = List<int>.generate(20, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final Color oddItemColor =
        Colors.orange[900]?.withOpacity(0.05) ?? Colors.orange;
    final Color evenItemColor =
        Colors.orange[900]?.withOpacity(0.15) ?? Colors.orange;

    return ReorderableListView(
      children: <Widget>[
        for (int i = 0; i < _items.length; i++)
          ListTile(
            key: Key('$i'),
            tileColor: _items[i].isOdd ? oddItemColor : evenItemColor,
            title: Text('Item ${_items[i]}'),
          )
      ],
      onReorder: (int oldIndex, int newIndex) {
        setState(
          () {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            final int item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item);
          },
        );
      },
    );
  }

  void refresh() {
    setState(() {});
  }
}

class ReOrderableListViewDescription extends StatelessWidget {
  const ReOrderableListViewDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String desc =
        'A list whose items the user can interactively reorder by dragging.';
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          desc,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
