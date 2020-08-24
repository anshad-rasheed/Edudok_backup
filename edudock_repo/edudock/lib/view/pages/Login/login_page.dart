import 'package:edudock/Utils/Colors.dart';
import 'package:edudock/view/pages/Login/otp_verification_page.dart';
import 'package:edudock/view/widgets/logo_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: EduDockColors.PrimaryColor,
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                LogoWidget(),
                SizedBox(height: 75),
                Text(
                  "Mobile Number Verification",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                SizedBox(height: 5),
                Text(
                  "Please enter your mobile number",
                  style: TextStyle(
                      color: EduDockColors.PrimaryTextColor, fontSize: 13),
                ),
                SizedBox(height: 15),
                Container(
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
                              controller: TextEditingController(
                                text: "+91",
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal)),
                        ),
                        flex: 1,
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "0000000000",
                                  hintStyle: TextStyle(
                                      color: EduDockColors.PrimaryTextColor),
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal)),
                        ),
                        flex: 4,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VerifyOTP()));
                  },
                  child: Text(
                    "Send OTP",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                  color: EduDockColors.ButtonBackgroundColor,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
          ),
        ));
  }
}
