import 'package:flutter/material.dart';
import 'package:thirty_days_of_flutter/pages/home_page.dart';
import 'package:thirty_days_of_flutter/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
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
                "Welocome $name",
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
                      onChanged: (value){
                        setState(() {
                          name = value;
                        });
                      },
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
              InkWell(
                onTap:() async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(
                    Duration(seconds: 1),
                  );
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },

                child: AnimatedContainer(
                  duration: Duration(
                    seconds: 1,
                  ),
                  width: changeButton?50 : 150,
                  height: 50,
                  alignment:Alignment.center,
                  child: changeButton?Icon(Icons.done,color: Colors.white,): Text('Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  decoration: BoxDecoration(
                    // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton?50:8),

                  ),
                ),
              ),
              // ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.green,
              //     onPrimary: Colors.white,
              //     elevation: 10,
              //     minimumSize: Size(120, 37),
              //     shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.circular(7),
              //     ),
              //   ),
              //   child: Text(
              //     "Login",
              //     style: TextStyle(
              //       fontSize: 17,
              //     ),
              //   ),
              //   onPressed: () {
              //   Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              // ),
            ],
          ),
        ));
  }
}
