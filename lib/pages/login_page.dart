import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset('assets/images/login_image.png',
          fit: BoxFit.cover,
          ),
          SizedBox(
            height: 22,
          ),
          Text("Welocome",
            style: TextStyle(
                fontSize:24,
              fontWeight: FontWeight.bold
            ),
          ),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 30),
           child: Column(
             children: [
               SizedBox(height: 20.0,),
               TextField(
                 decoration: InputDecoration(
                   hintText: "Enter User Name",
                   labelText: "User name",
                 ),
               ),
               TextField(
                 obscureText: true,
                 decoration: InputDecoration(
                   hintText: "Enter Password",
                   labelText: "User Password",
                 ),
               ),
             ],
           ),
         ),
          SizedBox(height: 20,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.pink,
            onPrimary: Colors.white,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            )
          ),
          child: Text("login"),
          onPressed: (){
            print("HI");
          },
        ),
        ],
      )
    );
  }
}
