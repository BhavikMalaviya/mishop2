import 'package:flutter/material.dart';
import 'package:mishop_app/Helper/app_color.dart';
import 'package:mishop_app/pages/forgot_password_screen.dart';
import '../Helper/helper.dart';
import '../Helper/app_color.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Helper().heightBox(size.height * 0.12),
              Helper().buildTextField(
                  color: AppColors.textfieldcolor,
                  textColor: Colors.white,
                  shadowColor: Colors.orange[900],
                  hintText: "User Name",
                  spredColor: 1,
                  blurColor: 0,
                  icon: Icons.verified_user,
                  dx: 0,
                  dy: 5),
              // heightBox(),
              Helper().heightBox(size.height * 0.03),
              Helper().buildTextField(
                color: Colors.white,
                textColor: Colors.grey,
                shadowColor: Colors.grey,
                hintText: "StecenSm0145@gmail.com",
                blurColor: 5,
                spredColor: 0.1,
                icon: Icons.email,
              ),
              Helper().heightBox(size.height * 0.03),
              Helper().buildTextField(
                  color: Colors.white,
                  textColor: Colors.grey,
                  shadowColor: Colors.grey,
                  hintText: "Password",
                  blurColor: 5,
                  spredColor: 0.1,
                  icon: Icons.vpn_key,
                  secure: true),
              Helper().heightBox(size.height * 0.03),
              Helper().buildTextField(
                color: Colors.white,
                textColor: Colors.grey,
                shadowColor: Colors.grey,
                hintText: "Mobile Number",
                blurColor: 5,
                spredColor: 0.1,
                icon: Icons.call,
              ),
              Helper().heightBox(size.height * 0.06),
              Helper().appButton(
                  text: "Sign Up",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotpasswordScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
