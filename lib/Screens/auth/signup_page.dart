import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/auth/login_page.dart';
import 'package:food_delivery/Screens/premium/premium_screen.dart';
import 'package:food_delivery/Widgets/button_container_widgets.dart';
import 'package:food_delivery/Widgets/form_container_widget.dart';
import 'package:food_delivery/theme/style.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

bool _rememberMeCheckValue = false;

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 140.0,
                  ),
                  const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const FormContainerWidget(hintText: "Username"),
                  const SizedBox(
                    height: 20,
                  ),
                  const FormContainerWidget(hintText: "Email"),
                  const SizedBox(
                    height: 20,
                  ),
                  const FormContainerWidget(hintText: "Password"),
                  const SizedBox(
                    height: 20,
                  ),
                  const FormContainerWidget(hintText: "Phone Number"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        onChanged: (value) {
                          setState(() {
                            _rememberMeCheckValue = value!;
                          });
                        },
                        value: _rememberMeCheckValue,
                      ),
                      // const Text("Remember me", style: TextStyle(fontSize: 15),)
                      Expanded(
                        child: RichText(
                          maxLines: 2,
                          text: const TextSpan(
                              text: "By Signing up you accept the ",
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: "Team of service",
                                  style: TextStyle(
                                    color: primaryColorED6E1B,
                                  ),
                                ),
                                TextSpan(
                                  text: "and",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(
                                    color: primaryColorED6E1B,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ButtonContainerWidget(
                    title: "Sign Up",
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const PremiumScreen()),
                          (route) => false);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>const LoginPage()), (route)=>false);
                },
              
              child: Text("logIn",style: TextStyle(fontSize: 15,color: primaryColorED6E1B),),),
            ],
          )
        ],
      ),
    ));
  }
}
