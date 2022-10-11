import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:assignment1/main.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});
  static const String routeName = '/Booking';
  @override
  State<Booking> createState() => _BookingtState();
}

class _BookingtState extends State<Booking> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              // tambahkan komponen seperti input field disini
              TextFormField(
                decoration: new InputDecoration(
                  hintText: "Your Full Name",
                  labelText: "Full Name",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (value == null) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              TextFormField(
                autofocus: true,
                decoration: new InputDecoration(
                  hintText: "Your Active Email Address",
                  labelText: "Email Address",
                  icon: Icon(Icons.mail),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "contoh: 0812xxxxxxx",
                  labelText: "Phone Number",
                  icon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              TextFormField(
                autofocus: true,
                decoration: new InputDecoration(
                  hintText: "Your City",
                  labelText: "City",
                  icon: Icon(Icons.holiday_village),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              new Padding(
                padding: new EdgeInsets.only(top: 20.0),
              ),
              ElevatedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
                // color: Colors.blue,
                onPressed: () {
                  showAlertDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FloatingActionButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Success!!"),
    content: Text("your data Booking is successfully"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
