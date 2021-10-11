import 'package:flutter/material.dart';

class SliverListImp extends StatefulWidget {
  const SliverListImp({Key? key}) : super(key: key);

  @override
  _SliverListImpState createState() => _SliverListImpState();
}

class _SliverListImpState extends State<SliverListImp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Card(
                  child: Container(
                    color: Colors.white,
                    height: 80,
                    alignment: Alignment.center,
                    child: Text(
                      "Item $index",
                      style: const TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                );
              },
              childCount: 1000, // 1000 list items
            ),
          ),
        ],
      ),
    );
  }
}

class SliverListDesc extends StatelessWidget {
  const SliverListDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Sliver LIst is a built-in sliver widget in flutter that places multiple box children in a linear array along the main axis.',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}

