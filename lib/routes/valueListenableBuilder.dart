import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class ValueListenableBuilderImplementation extends StatelessWidget {
  const ValueListenableBuilderImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> _counter = ValueNotifier<int>(0);
    return MaterialApp(
      theme: Theme.of(context),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ValueListenableBuilder'),
        ),
        body: Center(
          child: ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, value, child) {
              return Text(
                'Value: $value',
                style: const TextStyle(fontSize: 20),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () => _counter.value += 1,
        ),
      ),
    );
  }
}

class ValueListenableBuilderDescription extends StatelessWidget {
  const ValueListenableBuilderDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 15, right: 15),
      child: Text(
        'A widget whose content stays synced with a ValueListenable.',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

class ValueListenableBuilderCode extends CodeString {
  const ValueListenableBuilderCode();

  @override
  String buildCodeString() {
    return """ValueListenableBuilderCode(
      Scaffold(
        appBar: AppBar(
          title: const Text('ValueListenableBuilder'),
        ),
        body: Center(
          child: ValueListenableBuilder(
            valueListenable: _counter,
            builder: (context, value, child) {
              return Text(
                'Value: \$value',
                style: const TextStyle(fontSize: 20),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () => _counter.value += 1,
        ),
      ),
    """;
  }
}
