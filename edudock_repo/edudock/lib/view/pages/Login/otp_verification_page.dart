import 'package:edudock/view/pages/Home/home.dart';
import 'package:edudock/view/widgets/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:edudock/Utils/Colors.dart';

class VerifyOTP extends StatelessWidget {
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
                  "Enter OTP",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17),
                ),
                SizedBox(height: 5),
                Text(
                  "We have sent you access code via SMS",
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
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
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
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
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
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: TextFormField(
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
                    ],
                  ),
                ),
                SizedBox(height: 15),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text(
                    "Confirm",
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                  color: EduDockColors.ButtonBackgroundColor,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                SizedBox(height: 15),
                Text("Didn't receive the OTP?",
                    style: TextStyle(
                        color: EduDockColors.PrimaryTextColor, fontSize: 13)),
                SizedBox(height: 15),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Resend Code",
                      style: TextStyle(
                          color: EduDockColors.PrimaryTextColor, fontSize: 13)),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            ),
          ),
        ));
  }
}
