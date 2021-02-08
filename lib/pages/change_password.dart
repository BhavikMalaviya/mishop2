import 'package:flutter/material.dart';
import 'package:mishop_app/Helper/app_color.dart';
import 'package:mishop_app/Helper/helper.dart';
import 'package:mishop_app/pages/home_screen.dart';
import 'package:mishop_app/pages/sign_up_screen.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
              Helper().heightBox(size.height * 0.19),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Change Password?",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              // heightBox(),
              Helper().heightBox(size.height * 0.04),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Your new Password must be different\nfrom previous used password.",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ),

              Helper().heightBox(size.height * 0.065),
              Helper().buildTextField(
                  color: Colors.white,
                  textColor: Colors.grey,
                  shadowColor: Colors.grey,
                  hintText: "********",
                  blurColor: 5,
                  spredColor: 0.1,
                  icon: Icons.lock,
                  secure: true),

              Helper().heightBox(size.height * 0.03),
              Helper().buildTextField(
                  color: AppColors.textfieldcolor,
                  textColor: Colors.white,
                  shadowColor: Colors.orange[900],
                  hintText: "New Password",
                  spredColor: 1,
                  blurColor: 0,
                  icon: Icons.lock,
                  dx: 0,
                  dy: 5),
              Helper().heightBox(size.height * 0.03),
              Helper().buildTextField(
                color: Colors.white,
                textColor: Colors.grey,
                shadowColor: Colors.grey,
                hintText: "Confirm Password",
                blurColor: 5,
                spredColor: 0.1,
                icon: Icons.lock,
              ),

              Helper().heightBox(size.height * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Helper().appButton(
                      text: "Reset Password",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }),
                ],
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
    ;
  }
}
