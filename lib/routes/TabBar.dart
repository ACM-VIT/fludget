import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class TabBarImplementation extends StatelessWidget {
  const TabBarImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text('CHATS'),
                ),
                Tab(
                  child: Text('STATUS'),
                ),
                Tab(
                  child: Text('CALLS'),
                ),
              ],
            ),
            title: const Text('Whatsapp'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.message),
              Icon(Icons.picture_in_picture),
              Icon(Icons.call),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarDescription extends StatelessWidget {
  const TabBarDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 15, right: 15),
      child: Text(
        'A material design widget that displays a horizontal row of tabs.Typically created as the AppBar.bottom part of an AppBar and in conjunction with a TabBarView.',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class TabBarCode extends CodeString {
  const TabBarCode();

  @override
  String buildCodeString() {
    return """TabBarCode(
      DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text('CHATS'),
                ),
                Tab(
                  child: Text('STATUS'),
                ),
                Tab(
                  child: Text('CALLS'),
                ),
              ],
            ),
            title: const Text('Whatsapp'),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.message),
              Icon(Icons.picture_in_picture),
              Icon(Icons.call),
            ],
          ),
        ),
      ),
     ),
""";
  }
}
