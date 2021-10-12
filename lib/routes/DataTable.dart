import 'package:flutter/material.dart';

class DatatableWidget extends StatefulWidget {
  const DatatableWidget({Key? key}) : super(key: key);

  @override
  DatatableWidgetState createState() {
    return new DatatableWidgetState();
  }
}

class DatatableWidgetState extends State<DatatableWidget> {
  Widget bodyData() => DataTable(
      onSelectAll: (b) {},
      sortColumnIndex: 1,
      sortAscending: true,
      columns: <DataColumn>[
        DataColumn(
          label: Text(
            "First Name",
            style:
                new TextStyle(fontSize: 14.0, height: 1.2),
          ),
          numeric: false,
          onSort: (i, b) {
            print("$i $b");
            setState(() {
              names.sort((a, b) => a.firstName.compareTo(b.firstName));
            });
          },
          tooltip: "To display first name of the Name",
        ),
        DataColumn(
          label: Text(
            "Last Name",
            style:
                new TextStyle(fontSize: 14.0, height: 1.2),
          ),
          numeric: false,
          onSort: (i, b) {
            print("$i $b");
            setState(() {
              names.sort((a, b) => a.lastName.compareTo(b.lastName));
            });
          },
          tooltip: "To display last name of the Name",
        ),
      ],
      rows: names
          .map(
            (name) => DataRow(
              cells: [
                DataCell(
                  Text(
                    name.firstName,
                    style: new TextStyle(
                        fontSize: 14.0, height: 1.2),
                  ),
                  showEditIcon: false,
                  placeholder: false,
                ),
                DataCell(
                  Text(
                    name.lastName,
                    style: new TextStyle(
                        fontSize: 14.0, height: 1.2),
                  ),
                  showEditIcon: false,
                  placeholder: false,
                )
              ],
            ),
          )
          .toList());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: bodyData(),
      ),
    );
  }
}

class Name {
  String firstName;
  String lastName;

  Name({required this.firstName, required this.lastName});
}

var names = <Name>[
  Name(firstName: " Nitesh", lastName: "Kumar"),
  Name(firstName: "Aakash", lastName: "Tewari"),
  Name(firstName: "Rohan", lastName: "Singh"),
];

class DataTableWidgetDescription extends StatelessWidget {
  const DataTableWidgetDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' DataTable Widget \n',
              style: TextStyle(
                fontSize: 26.0,
              ),
            ),
            RichText(
              text: new TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: Theme.of(context).textTheme.bodyText1,
                children: <TextSpan>[
                  TextSpan(
                    text:
                        'DataTable widget allows you to build a table that automatically sizes its columns according to what’s actually in the cells.'
                        'All DataTable Elements provide friendly-callback to ease out Implementing User behavior to edit, select, sort data with the data cells taking widgets so that you can put in any widgets in your data cells.',
                  ),
                  TextSpan(
                      text: '\n\nSyntax\n\n',
                      style: TextStyle(
                        fontSize: 22.0,
                      )),
                  TextSpan(
                      text: "Add the DataTable() widget \n "
                          ": Define DataColumn  \n"
                          ": Define each DataRow & DataCell in each of it.\n \n \n"),
                  TextSpan(
                      text:
                          'DataTable — Possess column & rows which take an array of DataColumn & DataRow Respectively. Each DataRow has cell property that takes an array of DataCell.')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
