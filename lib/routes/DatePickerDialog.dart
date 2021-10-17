import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerDialogImplementation extends StatefulWidget {
  const DatePickerDialogImplementation({Key? key}) : super(key: key);

  @override
  _DatePickerDialogImplementationState createState() =>
      _DatePickerDialogImplementationState();
}

class _DatePickerDialogImplementationState
    extends State<DatePickerDialogImplementation> {
  TextEditingController pin = TextEditingController();

  TextEditingController date = TextEditingController();

  DateTime? datee ;

  selectDate(BuildContext context) async {
    DateTime? datePicker = await showDatePicker(
        context: context,
        initialDate: (datee==null) ? DateTime.now() : datee!,
        firstDate: DateTime(2001),
        lastDate: DateTime(2050)
        builder: (BuildContext context, Widget? child)
        {
            return Theme(data: ThemeData(
              primaryColor: Theme.of(context).primaryColor,
              primarySwatch: Colors.blueGrey,
            ), child: child!)
        }
        );   

         if (datePicker != null && datePicker != datee) {
      setState(() {
        datee = datePicker;
        ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text('Date Picked',
                                  style: TextStyle(fontSize: 20)),
                            ));
      });

    } 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              height: 50,
              child: Text(
                'Below Implementation is a basic use case of DatePicker Widget',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: 350,
              child: Image.asset('assets/images/vaccination.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 30, right: 30),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: pin,
                decoration: InputDecoration(
                  hintText: 'Enter Area Pincode',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 30, right: 30),
              child: InkWell(
                onTap: () {
                  setState(() {
                    selectDate(context);
                  });
                },
                child: Row(
                  children: [
                    Icon(Icons.calendar_today),
                    SizedBox(width: 10),
                    Text((datee==null ? 'Pick a Date' : DateFormat('dd-MM-yyyy').format(datee!))),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Check Availability',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class DatePickerDialogDescription extends StatelessWidget {
  const DatePickerDialogDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0, left: 15, right: 15),
      child: Text(
        'DatePicker is a material widget in flutter that lets the user select a date. Since there is no widget available for creating datepicker we will use showDatePicker() function. It will display a Material Design date picker in a dialog by calling flutter\'s inbuilt function.',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
