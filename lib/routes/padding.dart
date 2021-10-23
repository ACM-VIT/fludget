import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class PaddingImplementation extends StatefulWidget {
  const PaddingImplementation({Key? key}) : super(key: key);

  @override
  State<PaddingImplementation> createState() => _PaddingImplementationState();
}

class _PaddingImplementationState extends State<PaddingImplementation> {
  final String eAll = 'Same padding value for all sides';

  final String eNothing = 'No padding';

  final String eFromLTRB = 'Specific padding values for each side';

  int paddingType = 0;

  Widget getCustomWidgets(){
    switch(paddingType){
      case 0:
        return Container(
          child: Center(
              child: Text(
                eNothing,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              )),
          height: 320,
          width: 320,
          color: Theme.of(context).primaryColor,
        );
      case 1:
        return Padding(
          padding:
          EdgeInsets.all(30),
          child: Container(
            child: Center(
                child: Text(
                  eAll,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                )),
            height: 320,
            width: 320,
            color: Theme.of(context).primaryColor,
          ),
        );
      case 2:
        return Padding(
          padding:
          EdgeInsets.fromLTRB(60, 15, 5, 30),
          child: Container(
            child: Center(
                child: Text(
                  eFromLTRB,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                )),
            height: 320,
            width: 320,
            color: Theme.of(context).primaryColor,
          ),
        );
      default:
        return Padding(padding: EdgeInsets.all(9),);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          getCustomWidgets()
          ,
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.grey[300],
              child: Wrap(
                spacing: 15,
                runAlignment: WrapAlignment.spaceEvenly,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        paddingType = 0;
                      });
                    },
                    child: Text('No padding'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        paddingType = 1;
                      });
                    },
                    child: Text('Apply EdgeInsets.all'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        paddingType = 2;
                      });
                    },
                    child: Text('Apply EdgeInsets.LTRB'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaddingDescription extends StatelessWidget {
  const PaddingDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Padding adds empty space around a widget. We can apply padding around any widget by placing it as the child of the Padding widget. The size of the child widget inside padding is constrained by how much space is remaining after adding empty space around. \n'
          'In provided example, we can set padding on all sides with the EdgeInsets.all() property'
          ', or, we can set specific paddings for each side with EdgeInsets.LTRB() property',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}

class PaddingCode extends CodeString {
  const PaddingCode();

  @override
  String buildCodeString() {
    return """ 
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 300,
            width: 300,
            color: Theme.of(context).primaryColor,
          ),
        ),
""";
  }
}
