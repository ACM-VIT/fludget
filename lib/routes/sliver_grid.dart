import 'package:flutter/material.dart';

class SliverGridSample extends StatelessWidget {
  const SliverGridSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Text(
              "Sliver Grid",
              style: TextStyle(fontSize: 100),
            )
          ])),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, ind) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (ind % 9)],
                  child: Text('grid item $ind'),
                );
              }),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 4.0,
              ))
        ],
      ),
    ));
  }
}

class SliverGridDescription extends StatelessWidget {
  const SliverGridDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'A sliver that places multiple box children in a two dimensional arrangement.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
                'SliverGrid places its children in arbitrary positions determined by gridDelegate. Each child is forced to have the size specified by the gridDelegate.'),
            Text(
                '\nThe main axis direction of a grid is the direction in which it scrolls; the cross axis direction is the orthogonal direction.'),
          ],
        ),
      ),
    );
  }
}
