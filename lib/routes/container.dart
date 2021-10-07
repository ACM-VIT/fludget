import 'package:flutter/material.dart';

class ContainerImplementation extends StatelessWidget {
  const ContainerImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Container with default shape ",style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
              Text("Container with border radius of 12.0 ",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Container(

                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(12.0))
                ),
              ),
              Text("Container with circle shape ",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ContainerDescription extends StatelessWidget {
  const ContainerDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Text(

          'A convenience widget that combines common painting, positioning, and sizing widget',
          style: TextStyle(color: Colors.white),

        ),
      ),
    );
  }
}