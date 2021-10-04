import 'package:flutter/material.dart';

class textfieldsample extends StatefulWidget {
  const textfieldsample({Key? key}) : super(key: key);

  @override
  _textfieldsampleState createState() => _textfieldsampleState();
}

class _textfieldsampleState extends State<textfieldsample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            keyboardType: TextInputType.number,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(

                // isDense: true,
                suffixIcon: TextButton(
                  child: Text(
                    "Send",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {},
                ),
                suffixIconConstraints: BoxConstraints(maxHeight: 40),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "(+91)  ",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                prefixIconConstraints: BoxConstraints(maxHeight: 40),
                hintText: "Enter Your Phone Number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: TextFormField(
              keyboardType: TextInputType.name,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(

                  // isDense: true,

                  suffixIconConstraints: BoxConstraints(maxHeight: 40),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                  ),
                  prefixIconConstraints: BoxConstraints(maxHeight: 40),
                  hintText: "Enter your Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
}

class textfielddescription extends StatefulWidget {
  const textfielddescription({Key? key}) : super(key: key);

  @override
  _textfielddescriptionState createState() => _textfielddescriptionState();
}

class _textfielddescriptionState extends State<textfielddescription> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "TextField Description here",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
