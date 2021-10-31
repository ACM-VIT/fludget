import 'package:fludget/Models/codeString.dart';
import 'package:flutter/material.dart';

class AutoCompleteImplemention extends StatefulWidget {
  const AutoCompleteImplemention({Key? key}) : super(key: key);

  @override
  _AutoCompleteImplementionState createState() =>
      _AutoCompleteImplementionState();
}

class _AutoCompleteImplementionState extends State<AutoCompleteImplemention> {
  static const List<String> _kOptions = <String>[
    'Karachi',
    'Paris',
    'California',
    'Beijing'
  ];

  static const List<Student> students = <Student>[
    Student(firstName: "John", lastName: "Doe"),
    Student(firstName: "Zenbey", lastName: "Alam"),
    Student(firstName: "Abhinav", lastName: "Chinder"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text("Basic AutoComplete",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoSlab',
                  )),
              SizedBox(
                height: 15,
              ),
              Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return _kOptions.where((String option) {
                    return option.contains(textEditingValue.text.toLowerCase());
                  });
                },
                onSelected: (String selection) {
                  print('You just selected $selection');
                },
              ),
              SizedBox(
                height: 60,
              ),
              Text("Styled AutoComplete",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoSlab',
                  )),
              SizedBox(
                height: 15,
              ),
              Autocomplete<String>(
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return _kOptions.where((String option) {
                    return option.contains(textEditingValue.text.toLowerCase());
                  });
                },
                fieldViewBuilder:
                    (context, controller, focusNode, onEditingComplete) {
                  return TextField(
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'RobotoSlab',
                    ),
                    controller: controller,
                    focusNode: focusNode,
                    onEditingComplete: onEditingComplete,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                              color: Colors.pink.shade400, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                              color: Colors.pink.shade700, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.pink, width: 2)),
                    ),
                  );
                },
                onSelected: (String selection) {
                  print('You just selected $selection');
                },
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Text("Custom Type List Options AutoComplete",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'RobotoSlab',
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              Autocomplete<Student>(
                displayStringForOption: (Student option) =>
                    '${option.firstName} ${option.lastName}',
                optionsBuilder: (TextEditingValue textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<Student>.empty();
                  }
                  return students.where((Student option) {
                    return option.firstName
                            .contains(textEditingValue.text.toLowerCase()) ||
                        option.lastName
                            .contains(textEditingValue.text.toLowerCase());
                  });
                },
                onSelected: (Student selection) {
                  print('You just selected ${selection.toString()}');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Student {
  final String firstName;
  final String lastName;

  const Student({required this.firstName, required this.lastName});

  String toString() {
    return '$firstName $lastName';
  }

  bool checkEqual(Student otherStudent) {
    return otherStudent.firstName == this.firstName &&
        this.lastName == otherStudent.lastName;
  }
}

class AutoCompleteWidgetDescription extends StatelessWidget {
  const AutoCompleteWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Introduction",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoSlab',
                  )),
              Text(
                  "A widget for helping the user make a selection by entering some text and choosing from among a list of options. For Example: In Google Maps, to select a place from list of options.",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'RobotoSlab',
                  )),
              SizedBox(
                height: 20,
              ),
              Text("Implementation",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoSlab',
                  )),
              SizedBox(
                height: 4,
              ),
              Text("""
      
            return  Autocomplete<String>(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == '') {
                  return const Iterable<String>.empty();
                }
                return _kOptions.where((String option) {
                  return option.contains(textEditingValue.text.toLowerCase());
                });
              },
              onSelected: (String selection) {
                print('You just selected "selection"');
              },
            )
                """,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'RobotoSlab',
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class AutoCompleteCode extends CodeString {
  const AutoCompleteCode();
  @override
  String buildCodeString() {
    return """Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return _kOptions.where((String option) {
                return option.contains(textEditingValue.text.toLowerCase());
              });
            },
            onSelected: (String selection) {
              print('You just selected \$selection');
            },
          ),""";
  }
}
