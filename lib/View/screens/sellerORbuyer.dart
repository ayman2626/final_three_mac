import 'package:final_three_mac/View/screens/login_screen.dart';
import 'package:flutter/material.dart';

class sellerORbuyer extends StatefulWidget {
  @override
  _sellerORbuyerState createState() => _sellerORbuyerState();
}

class _sellerORbuyerState extends State<sellerORbuyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // ignore: deprecated_member_use

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'SELLER',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login_screen()),
                  );
                },
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  'BUYER',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login_screen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
