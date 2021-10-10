import 'package:flutter/material.dart';

class OutlinedButtonImplimentation extends StatelessWidget {
  const OutlinedButtonImplimentation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: OutlinedButton(
                    onPressed: () => _message(context),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.orange[900],
                      side: BorderSide(
                        color: Colors.orange[900]!,
                      ),
                    ),
                    child: Text("Outlined Button")),
      )
    );
  }
}
void _message(BuildContext context) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("OutlinedButton was pressed"),
    ));
class OutlinedButtonDescription extends StatelessWidget {
  const OutlinedButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          'Outlined Button essentially a TextButton with an outlined border.',
          style: TextStyle(color: Colors.white,
          fontSize: 20),
        ),
      ),
    );
  }
}