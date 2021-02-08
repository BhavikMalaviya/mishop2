import 'package:flutter/material.dart';
import 'package:mishop_app/Helper/app_color.dart';
import 'package:mishop_app/Helper/helper.dart';
import 'package:mishop_app/pages/sign_up_screen.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Helper().heightBox(size.height * 0.12),
              Text(
                "Check Your\nMail",
                style: TextStyle(
                    fontSize: 26, fontWeight: FontWeight.w700, height: 1.5),
              ),
              // heightBox(),
              Helper().heightBox(size.height * 0.02),
              Text(
                "We have sent a OTP to your mail\nplease verify",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),

              Helper().heightBox(size.height * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildTextField(
                    color: Colors.white,
                    textColor: Colors.grey,
                    shadowColor: Colors.grey[100],
                    blurColor: 5,
                    spredColor: 0.1,
                    dx: 0,
                    dy: 5,
                    icon: Icons.email,
                  ),
                  buildTextField(
                    color: Colors.white,
                    textColor: Colors.grey,
                    shadowColor: Colors.grey[100],
                    blurColor: 0,
                    spredColor: 0.1,
                    dx: 0,
                    dy: 5,
                    icon: Icons.email,
                  ),
                  buildTextField(
                    color: Colors.white,
                    textColor: Colors.grey,
                    shadowColor: Colors.grey[100],
                    blurColor: 0,
                    spredColor: 0.1,
                    dx: 0,
                    dy: 5,
                    icon: Icons.email,
                  ),
                  buildTextField(
                    color: Colors.white,
                    textColor: Colors.grey,
                    shadowColor: Colors.grey[100],
                    blurColor: 0,
                    spredColor: 0.1,
                    dx: 0,
                    dy: 5,
                    icon: Icons.email,
                  ),
                ],
              ),
              Helper().heightBox(size.height * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Helper().appButton(
                      text: "Verify & Proceed",
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      }),
                ],
              ),
              Helper().heightBox(size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Did not receive the mail?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12)),
                          TextSpan(
                              text: " RESEND",
                              style: TextStyle(
                                  color: AppColors.textfieldcolor,
                                  fontWeight: FontWeight.w700)),
                          TextSpan(
                            text: "\nor Try another email address.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }

  Container buildTextField(
      {Color color,
      Color textColor,
      IconData icon,
      Color shadowColor = Colors.white,
      double spredColor = 0,
      double blurColor = 0,
      double dx = 0,
      double dy = 0,
      TextEditingController controller,
      bool secure = false}) {
    return Container(
      width: 70,
      height: 70,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
        boxShadow: [
          BoxShadow(
            offset: Offset(dx, dy),
            blurRadius: blurColor,
            spreadRadius: spredColor,
            color: shadowColor,
          )
        ],
      ),
      child: Container(
        child: TextFormField(
          obscureText: secure,
          controller: controller,
          cursorHeight: 20,
          cursorColor: Colors.black,
          style: TextStyle(fontSize: 14),
          decoration: new InputDecoration(
            border: InputBorder.none,
            hintStyle: TextStyle(color: textColor),
            contentPadding:
                EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          ),
        ),
      ),
    );
  }
}
