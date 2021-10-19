import 'package:flutter/material.dart';

class ClipRRectImplementation extends StatelessWidget {
  const ClipRRectImplementation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.network('https://picsum.photos/250?image=9',scale: 3),
                  Text('Without ClipRRect')
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius:
                    BorderRadius.circular(20),
                    child: Image.network('https://picsum.photos/250?image=9',scale: 3 ,),
                  ),
                  Text('With ClipRRect')
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  ClipRRect(
                    clipBehavior: Clip.antiAlias,
                    borderRadius:
                    BorderRadius.circular(20),
                    child: Image.network('https://picsum.photos/250?image=9',scale: 3 ,),
                  ),
                  Text('With clipBehaviour')
                ],
              ),
            ],
          ),
        )
    );
  }
}

class ClipRRectDescription extends StatelessWidget {
  const ClipRRectDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(
          "A widget that clips its child using a rounded rectangle.By default, ClipRRect uses its own bounds as the base rectangle for the clip, but the size and location of the clip can be customized using a custom clipper",
          style: TextStyle(
              fontSize: 20),
        ),
      ),
    );
  }
}