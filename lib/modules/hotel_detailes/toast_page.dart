import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showToast();
          },
          child: Text('Book Now'),
        ),
      ),
    );
  }

  void _showToast() {
    Fluttertoast.showToast(
      msg: 'Booked Successfully',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ToastPage(),
  ));
}
