import 'package:flutter/material.dart';

class FormFieldImplementation extends StatefulWidget {
  const FormFieldImplementation({Key? key}) : super(key: key);

  @override
  _FormFieldImplementationState createState() =>
      _FormFieldImplementationState();
}

class _FormFieldImplementationState extends State<FormFieldImplementation> {
  final _formKey = GlobalKey<FormState>();

  var userText = TextEditingController();
  var passText = TextEditingController();

  var loginval = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field cannot be empty';
                            }
                            return null;
                          },
                          controller: userText,
                          decoration: InputDecoration(
                            labelText: 'Enter Username',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0, right: 22),
                        child: TextFormField(
                          controller: passText,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field cannot be empty';
                            }
                            if (value.length < 8) {
                              return 'Password length must be 8 or more';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Enter Password',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 38.0, right: 18, left: 18),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                loginval = true;
                              });
                            } else {
                              setState(() {
                                loginval = false;
                              });
                            }
                          },
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 10, left: 38, right: 38),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 28, color: Colors.white),
                              )),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                      (loginval == true)
                          ? Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Login Successful'),
                            )
                          : Text(''),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: Column(
                    children: [
                      Text(
                        'Input Instructions :-',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Username cannot be empty.\nPassword length must be 8 or more.',
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class FormFieldDescription extends StatelessWidget {
  const FormFieldDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 15, right: 15),
      child: Text(
        'FormField widget maintains the current state of the form field, so that updates and validation errors are visually reflected in the UI.',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
