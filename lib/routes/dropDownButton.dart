import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownButtonSample extends StatefulWidget {
  const DropDownButtonSample({Key? key}) : super(key: key);

  @override
  State<DropDownButtonSample> createState() => _DropDownButtonSampleState();
}

class _DropDownButtonSampleState extends State<DropDownButtonSample> {
//For Single Level DropDown
  String? valueChoose;
  final listItem = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Unselect',
  ];

//For Multi-level DropDown
  List<String> countries = ['USA', 'India'];
  List<String> indiaProvince = ['New Delhi', 'Bihar', 'Rajasthan'];
  List<String> usaProvince = ['Texas', 'Florida', 'California'];

  List<String> provinces = [];
  String? selectedCountry;
  String? selectedProvince;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 36.0),
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(children: [
                ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                    'Single-Level DropDown Button to select any Item from a list of items.',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 300,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(12)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        hint: Text("Select any Item"),
                        value: valueChoose,
                        iconSize: 36,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                        isExpanded: true,
                        onChanged: (newValue) {
                          if (newValue == 'Unselect') {
                            newValue = null;
                          }
                          setState(() {
                            valueChoose = newValue;
                          });
                        },
                        items: listItem.map(buildMenuItem).toList()),
                  ),
                ),
              ]),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(children: [
                ListTile(
                  leading: Icon(Icons.fiber_manual_record),
                  title: Text(
                    'Multi-Level DropDown Button where one dropdown depends on the selction of another dropdown.',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 20),
                DropdownButtonHideUnderline(
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12)),
                    child: DropdownButton<String>(
                        hint: Text("Country"),
                        value: selectedCountry,
                        iconSize: 36,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                        isExpanded: true,
                        onChanged: (country) {
                          if (country == 'USA') {
                            provinces = usaProvince;
                          } else if (country == 'India') {
                            provinces = indiaProvince;
                          } else {
                            provinces = [];
                          }
                          setState(() {
                            selectedProvince = null;
                            selectedCountry = country;
                          });
                        },
                        items: countries.map(buildMenuItem).toList()),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                DropdownButtonHideUnderline(
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12)),
                    child: DropdownButton<String>(
                        hint: Text("Provinces"),
                        value: selectedProvince,
                        iconSize: 36,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.black,
                        ),
                        isExpanded: true,
                        onChanged: (province) {
                          setState(() {
                            selectedProvince = province;
                          });
                        },
                        items: provinces.map(buildMenuItem).toList()),
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    ));

class DropDownButtonDescription extends StatelessWidget {
  const DropDownButtonDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'A dropdown button lets the user select from a number of items. The button shows the currently selected item as well as an arrow that opens a menu for selecting another item.',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
