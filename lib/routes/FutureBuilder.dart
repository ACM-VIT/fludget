import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FutureBuilderImplementation extends StatefulWidget {
  const FutureBuilderImplementation({Key? key}) : super(key: key);

  @override
  _FutureBuilderImplementationState createState() =>
      _FutureBuilderImplementationState();
}

class _FutureBuilderImplementationState
    extends State<FutureBuilderImplementation> {
  String url = '';
  bool isLoading = true;

  callApi() async {
    var response =
        await http.get(Uri.parse('https://meme-api.herokuapp.com/gimme'));

    var jsonResponse = jsonDecode(response.body);

    url = jsonResponse['url'];
    isLoading = false;

    return url;
  }

  // @override
  // void initState() {
  //   callApi();
  //   super.initState();
  // }

  // getData() {
  //   return url;
  // }

  // Future<String> getData() {
  //   return Future.delayed(Duration(seconds: 4), () {
  //     return "Hey There!! I am data.";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Below Meme is being loaded with the help of FutureBuilder Widget.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FutureBuilder(
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      '${snapshot.error} occured',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  );
                } else if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SizedBox(
                      height: 400,
                      width: double.infinity,
                      child: Image.network(url),
                      // child: Text(
                      //   '$data',
                      //   style: TextStyle(
                      //     fontSize: 28,
                      //   ),
                      // ),
                    ),
                  );
                }
              }
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 200.0, bottom: 200),
                  child: CircularProgressIndicator(),
                ),
              );
            },
            future: callApi(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: ElevatedButton(
              onPressed: () {
                callApi();
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Reload Meme',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class FutureBuilderDescription extends StatelessWidget {
  const FutureBuilderDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 15, right: 15),
      child: Text(
        'In Flutter, the FutureBuilder Widget is used to create widgets based on the latest snapshot of interaction with a Future.  It is necessary for Future to be obtained earlier either through a change of state or change in dependencies. FutureBuilder is a Widget that will help you to execute some asynchronous function and based on that function’s result your UI will update.',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
