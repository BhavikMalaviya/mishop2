import 'package:flutter/material.dart';
import 'package:mishop_app/Helper/helper.dart';
import 'package:mishop_app/pages/change_password.dart';

class ForgotpasswordScreen extends StatefulWidget {
  @override
  _ForgotpasswordScreenState createState() => _ForgotpasswordScreenState();
}

class _ForgotpasswordScreenState extends State<ForgotpasswordScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Helper().heightBox(size.height * 0.18),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              // heightBox(),
              Helper().heightBox(size.height * 0.05),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Enter the email address associated with\nyour account.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),

              Helper().heightBox(size.height * 0.06),
              Helper().buildTextField(
                color: Colors.white,
                textColor: Colors.grey,
                shadowColor: Colors.grey,
                hintText: "StevenSm0145@gmail.com",
                blurColor: 5,
                spredColor: 0.1,
                icon: Icons.email,
              ),
              Helper().heightBox(size.height * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Helper().appButton(
                      text: "Send OTP",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChangePassword()));
                      }),
                ],
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
