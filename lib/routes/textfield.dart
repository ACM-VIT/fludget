import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldImplementation extends StatelessWidget {
  const TextFieldImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildNormalCard(),
          buildPasswordCard(),
          buildNumberCard(),
        ],
      ),
    );
  }
}

Widget buildNormalCard() => Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.fiber_manual_record),
              title: Text(
                'Normal TextField with outlined Border,prefix icon and hint text.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(30.0))),
                prefixIcon: Icon(Icons.input),
                hintText: 'Input Here',
              ),
            )
          ],
        ),
      ),
    );

Widget buildPasswordCard() => Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.fiber_manual_record),
              title: Text(
                'TextField for Password Input.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(30.0))),
                prefixIcon: Icon(Icons.lock),
                hintText: 'Password',
              ),
            )
          ],
        ),
      ),
    );

Widget buildNumberCard() => Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.fiber_manual_record),
              title: Text(
                'TextField for Number Input. Input formatter and keyboard type set to digit only.',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(30.0))),
                prefixIcon: Icon(Icons.phone),
                prefixText: '+91 ',
                hintText: '     Mobile Number',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 10,
            )
          ],
        ),
      ),
    );

class TextFielDescription extends StatelessWidget {
  const TextFielDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'TextField is a widget  which we can use to validate user input in flutter and also acheive better user experience by providing input guidance. ',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
