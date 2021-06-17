import 'package:flutter/material.dart';
import 'package:flutter_application_1/ChangePassPage/Verifyemail.dart';
import 'package:flutter_application_1/Signin/FrostedGlassBox.dart';

import 'package:flutter_application_1/Signin/Login.dart';
import 'package:google_fonts/google_fonts.dart';

class Forgotpassword extends StatefulWidget {
  @override
  _ForgotpasswordState createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
   @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double contWidth = size.width * 0.90;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(         
          image: Image.asset(
            "assets/images/Background.jpg").image, 
            fit: BoxFit.fill),
            ),
        child: Center(
          child: FrostedGlassBox(
            width: contWidth,
            height: contWidth,
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("Quên mật khẩu",style: GoogleFonts.montserrat(
                      color: Colors.lightBlue[700], 
                      fontSize: 35, 
                      fontWeight: FontWeight.bold),
                      ),
                  ),
                    SizedBox(height: 30),
                    Container(
                      width: 300,
                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white70
                        ),
                      child: TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email, color: Colors.indigo) ,
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: GoogleFonts.montserrat(color: Colors.grey)
                          ),
                        ),    
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => VerifyPhone()));
                      },
                    child: Container(
                        width: 300,
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: new  LinearGradient(
                            colors: [Colors.purpleAccent, Colors.purpleAccent[400]]),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.purpleAccent[400],
                                  offset: Offset(2,2)
                                )
                          ]  
                          ),
                        child: Center(
                          child: Text(
                            "Gửi mã", 
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white, 
                              fontWeight: FontWeight.bold),
                              ),
                        ),
                  ),
                 ),
                  SizedBox(height: 20),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) => MyHomePage()));
                      },
                      child: Container(
                        width: 300,
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.redAccent),
                        child: Center(
                          child: Text(
                            "Trở lại", 
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white, 
                              fontWeight: FontWeight.bold),
                              ),
                        ),
                  ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}