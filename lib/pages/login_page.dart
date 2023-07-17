import 'package:flutter/material.dart';
import 'package:thirty_days_of_flutter/pages/home_page.dart';
import 'package:thirty_days_of_flutter/utilis/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/login_image.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                "Welocome",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter User Name",
                        labelText: "User name",
                      ),
                    ),
                    SizedBox(height: 14,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        hintText: "Enter Password",
                        labelText: "User Password",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  onPrimary: Colors.white,
                  elevation: 10,
                  minimumSize: Size(120, 37),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
              ),
            ],
          ),
        ));
  }
}
