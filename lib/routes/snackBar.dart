import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SnackbarSample(),
    ),
  );
}

class SnackbarSample extends StatelessWidget {
  
  final snackBarDemo = SnackBar(
    content:  const Text("This is a SnackBar Demo !"),
    duration: const Duration(seconds:3),
    backgroundColor: Colors.black,
    action: SnackBarAction(label:"CLOSE",onPressed:(){})
  ); 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("This is the Snackbar Widget"),
          ),
          const SizedBox(height:20.0),
          ElevatedButton(
            child: const Text("Open Snackbar"),
            onPressed:(){
              ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);
            }
          ),
        ]
      )
    );
  }
}

class SnackBarDescription extends StatelessWidget {
  const SnackBarDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'SnackBar Description Here',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
