import 'package:fludget/Models/codeString.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.01,
            // ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Below Meme is being loaded with the help of FutureBuilder Widget.',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'RobotoSlab',
                ),
              ),
            ),

            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.01,
            // ),
            FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '${snapshot.error} occured',
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'RobotoSlab',
                        ),
                      ),
                    );
                  } else if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
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
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              },
              future: callApi(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: ElevatedButton(
                onPressed: () {
                  callApi();
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Reload Meme',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'RobotoSlab',
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ),
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
        style: TextStyle(
          fontSize: 16,
          fontFamily: 'RobotoSlab',
        ),
      ),
    );
  }
}

class FutureBuilderCode extends CodeString {
  const FutureBuilderCode();
  @override
  String buildCodeString() {
    return """FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '\${snapshot.error} occured',
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    );
                  } else if (snapshot.hasData) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        child: Image.network(url),
                        // child: Text(
                        //   '\$data',
                        //   style: TextStyle(
                        //     fontSize: 28,
                        //   ),
                        // ),
                      ),
                    );
                  }
                }
                return Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              },
              future: callApi(),
            ),
""";
  }
}
