import 'package:final_three_mac/View/screens/buyer/home.dart';
import 'package:final_three_mac/constants.dart';
import 'package:final_three_mac/controller/Apis/Authorizations.dart';
import 'package:flutter/material.dart';

class login_screen extends StatefulWidget {
  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    scaffoldBackgroundColor:
    Colors.grey[50];
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 40),
                    alignment: Alignment.topLeft,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "login",
                        style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 55,
                  ),
                  _formField(
                      prefixIcon: Icons.person_outline,
                      hintText: "phone number",
                      sulfixIcon: Icons.info_outline),
                  SizedBox(
                    height: 30,
                  ),
                  _formField(
                      prefixIcon: Icons.lock_outline,
                      hintText: "Enter Password",
                      sulfixIcon: Icons.info_outline,
                      obscureText: true),
                  ListTile(
                    contentPadding:
                        EdgeInsets.only(top: 50, left: 70, right: 70),
                    title: RaisedButton(
                      padding: EdgeInsets.all(20),
                      color: Colors.deepOrangeAccent,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => home()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  ListTile(
                    contentPadding:
                        EdgeInsets.only(top: 10, left: 80, right: 80),
                    title: RaisedButton(
                      padding: EdgeInsets.all(20),
                      color: Colors.deepOrangeAccent,
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      onPressed: () async {
                        Map data = {
                          "phone":"0106943978", 
                          "password":"password99"
                        };
                        ApiResult result = await Authorizations().loginUser(data);
                        if (result.hasError == false) {
                          print(result.data);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home()),
                          );
                        }

                        /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => sign_up()),
                        );*/
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _formField(
      {required IconData prefixIcon,
      required String hintText,
      required IconData sulfixIcon,
      bool obscureText = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        elevation: 7,
        child: TextFormField(
          obscureText: obscureText,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 12, right: 25),
              child: Icon(
                prefixIcon,
              ),
            ),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[400]),
            contentPadding: EdgeInsets.all(15),
            suffixIcon: sulfixIcon != null
                ? Padding(
                    padding: const EdgeInsets.only(left: 25, right: 12),
                    child: Icon(
                      sulfixIcon,
                    ),
                  )
                : SizedBox(
                    width: 1,
                    height: 1,
                  ),
          ),
        ),
      ),
    );
  }
}
