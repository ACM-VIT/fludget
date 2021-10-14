import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class password extends StatefulWidget {
  const password({Key? key}) : super(key: key);

  @override
  State<password> createState() => _HomePageState();
}

class _HomePageState extends State<password> {
  bool _isVisible = false;
  bool _isPasswordEightCharacter = false;
  bool _ishasPasswordNumber = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');

    setState(() {
      _isPasswordEightCharacter = false;
      if (password.length >= 8) _isPasswordEightCharacter = true;
      _ishasPasswordNumber = false;
      if (numericRegex.hasMatch(password)) _ishasPasswordNumber = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Your Account",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Set a Password",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Please create a secure password including the following crieria below ",
              style: TextStyle(
                  fontSize: 16, height: 1.5, color: Colors.grey.shade600),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (password) => onPasswordChanged(password),
              obscureText: !_isVisible,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  icon: _isVisible
                      ? const Icon(
                          Icons.visibility,
                          color: Colors.black,
                        )
                      : const Icon(Icons.visibility_off, color: Colors.grey),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                hintText: "Password",
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(microseconds: 500),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: _isPasswordEightCharacter
                        ? Colors.green
                        : Colors.transparent,
                    border: _isPasswordEightCharacter
                        ? Border.all(color: Colors.transparent)
                        : Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Contains at least 8 characters"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(microseconds: 500),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: _ishasPasswordNumber
                        ? Colors.green[400]
                        : Colors.transparent,
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Contains at least 1 Numbers"),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: Colors.black,
              child: const Text(
                "CREATE ACCOUNT",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class passwordDescription extends StatelessWidget {
  const passwordDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'This ui impliments password validations ',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            'password must be a 6 charectors letter and numbers',
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
