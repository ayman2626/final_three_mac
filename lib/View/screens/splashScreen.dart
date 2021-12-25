
import 'package:final_three_mac/View/screens/sellerORbuyer.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // ignore: deprecated_member_use
        child: Center(
          child: FlatButton(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            color: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              'splash Screen',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => sellerORbuyer()),
              );
            },
          ),
        ),
      ),
    );
  }
}
