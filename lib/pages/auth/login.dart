import 'package:brr_prototype/controllers/login_controller.dart';
import 'package:brr_prototype/pages/auth/register.dart';
import 'package:brr_prototype/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                height: 274,
                child: Image.asset(
                  'assets/images/illu_login.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Text(
                  'Login',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                ),

                // NOTE: FORM LOGIN
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: loginController.emailController,
                      style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Email ID',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: loginController.passwordController,
                      style: greyTextStyle.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Password',
                        hintStyle: greyTextStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () => loginController.loginWithEmail(),
                          style: ElevatedButton.styleFrom(
                            primary: redColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text.rich(
                        TextSpan(
                          text: 'Belum punya akun?',
                          style: greyTextStyle.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                          children: [
                            TextSpan(
                              text: ' Mendaftar',
                              style: redTextStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.off(RegisterPage());
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
