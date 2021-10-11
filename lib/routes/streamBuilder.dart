import 'dart:async';

import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({Key? key}) : super(key: key);

  @override
  _StreamBuilderWidgetState createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {
  double bitcoinPrice = 300000;
  StreamController<double> _controller = StreamController<double>();

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        children: [
          buildFirstBuilder(),
          buildSecondBuilder(),
        ],
      ),
    );
  }

  StreamBuilder<double> buildFirstBuilder() => StreamBuilder<double>(
        initialData: bitcoinPrice,
        stream: getBitCoinPrice(),
        builder: (context, snapshot) {
          final bitcoins = snapshot.data!.toStringAsFixed(2);
          return Padding(
            padding: EdgeInsets.all(16),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: Transform.translate(
                        offset: Offset(-20, 5),
                        child: Text(
                          "Using StreamBuilder we are changing the data using streams.",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.white,
                          child: Image.asset('assets/images/bitcoin.png'),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          '\$' + bitcoins,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
  StreamBuilder<double> buildSecondBuilder() => StreamBuilder<double>(
        initialData: bitcoinPrice,
        stream: _controller.stream,
        builder: (context, snapshot) {
          final bitcoins = snapshot.data!.toStringAsFixed(2);
          return Padding(
            padding: EdgeInsets.all(16),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.fiber_manual_record),
                      title: Transform.translate(
                        offset: Offset(-20, 5),
                        child: Text(
                          "Changing the data using StreamCotroller.",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 55,
                          backgroundColor: Colors.white,
                          child: Image.asset('assets/images/bitcoin.png'),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          '\$' + bitcoins,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        bitcoinPrice = bitcoinPrice + 50;
                        _controller.sink.add(bitcoinPrice);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        primary: Colors.deepOrangeAccent,
                      ),
                      child: Text('Increment BitCoins',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
  Stream<double> getBitCoinPrice() => Stream<double>.periodic(
        Duration(seconds: 1),
        (count) => (bitcoinPrice + count * 5),
      );
}

class StreamBuilderDescription extends StatelessWidget {
  const StreamBuilderDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
'StreamBuilder is a widget that builds itself based on the latest snapshot of interaction with a stream.The Stream is like a pipe. When you enter a value from one side and a listener from the other side, the listener will get that value.',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
