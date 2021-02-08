import 'package:flutter/material.dart';
import 'package:mishop_app/Helper/app_color.dart';
import 'package:mishop_app/config.dart';
import 'package:mishop_app/pages/otp_screen.dart';
import '../Helper/helper.dart';
import '../Helper/app_color.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();

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
              Helper().buildTextField(
                  color: AppColors.textfieldcolor,
                  textColor: Colors.white,
                  shadowColor: Colors.orange[900],
                  hintText: "StevenSm0145@gmail.com",
                  spredColor: 1,
                  blurColor: 0,
                  icon: Icons.email,
                  dx: 0,
                  dy: 5),
              // heightBox(),
              Helper().heightBox(size.height * 0.05),
              Helper().buildTextField(
                  color: Colors.white,
                  textColor: Colors.grey,
                  shadowColor: Colors.grey,
                  hintText: "Password",
                  blurColor: 5,
                  spredColor: 0.1,
                  icon: Icons.lock,
                  secure: true),
              Helper().heightBox(size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(color: AppColors.textfieldcolor),
                  )
                ],
              ),
              Helper().heightBox(size.height * 0.06),
              Helper().appButton(
                  text: "Login",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OtpScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
