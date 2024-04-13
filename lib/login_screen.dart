import 'package:gym_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/home_screen.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});
  
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController _email = TextEditingController(text:"");
  TextEditingController _Password = TextEditingController(text:"");
  @override
  Widget build(BuildContext context){
    return Scaffold(
    backgroundColor: primary,
    body: getBody(),
    );
  }
  Widget getBody(){
    return SafeArea(child: Center(
      child: Column(children: [
        SizedBox(height: 50),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("images/logo.jpg"),
              fit: BoxFit.cover,
            ),
            ),
        ),
        SizedBox(height: 80),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: grey.withOpacity(0.03),
                spreadRadius: 10,
                blurRadius: 3,
              ),
            ],
          ),
          child: Padding(
            padding:EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email Address", 
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                fontSize: 13, 
                color: Color(0xFF67727d),
                ),
                ),
                TextField(
                  controller: _email,
                  cursorColor: black,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.email_outlined),
                    prefixIconColor: black,
                    hintText: "Email",
                  ),
                ),
              ],
            ),
          ),
        ),
         SizedBox(height: 20),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: grey.withOpacity(0.03),
                spreadRadius: 10,
                blurRadius: 3,
              ),
            ],
          ),
          child: Padding(
            padding:EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Password", 
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                fontSize: 13, 
                color: Color(0xFF67727d),
                ),
                ),
                TextField(
                  obscureText: true,
                  controller: _Password,
                  cursorColor: black,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.lock),
                    prefixIconColor: black,
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    suffixIconColor: Colors.black,
                    hintText: "Password",
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 60),
        GestureDetector(
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => HomeScreen(),
              ));
          },
          child: Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: buttoncolor,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Signup",
                style: TextStyle(
                  fontSize: 15, 
                  color: Colors.black, 
                  fontWeight: FontWeight.w300,
                  ),
                  ),
                  Text(
                "Forgot Passowrd",
                style: TextStyle(
                  fontSize: 15, 
                  color: Colors.black, 
                  fontWeight: FontWeight.w300,
                  ),
                  ),
            ],
          ),
          ),
      ],
      ),
    ));
  }
}