import 'package:flutter/material.dart';
import 'package:uber_clone/brand_colors.dart';
import 'package:uber_clone/screens/loginpage.dart';
import 'package:uber_clone/widgets/taxi_button.dart';

class RegisterPage extends StatelessWidget {
  static const String id = 'register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Image(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  image: AssetImage(
                    'images/logo.png',
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Create a Rider Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Brand-Bold',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: 'Full name',
                            labelStyle: TextStyle(
                              fontSize: 14,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            )),
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: 'Email address',
                            labelStyle: TextStyle(
                              fontSize: 14,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            )),
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            labelText: 'Phone',
                            labelStyle: TextStyle(
                              fontSize: 14,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            )),
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 14,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            )),
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TaxiButton(
                        title: 'LOGIN',
                        color: BrandColors.colorGreen,
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      LoginPage.id,
                      (route) => false,
                    );
                  },
                  child: Text(
                    'Already have a RIDER account? Log in',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
