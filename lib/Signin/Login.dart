import 'package:flutter/material.dart';
import 'package:flutter_application_1/ChangePassPage/ForgotPass.dart';
import 'package:flutter_application_1/HomePage/HomeScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FrostedGlassBox.dart';

import '../SignUp/Signup.dart';
import '../HomePage/HomeScreen.dart';


class MyHomePage extends StatelessWidget {
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
                    child: Text("Đăng nhập",style: GoogleFonts.montserrat(
                      color: Color(0xFF6b8ae7), 
                      fontSize: 35, 
                      fontWeight: FontWeight.bold),
                      ),
                  ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
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
                    SizedBox(height: 10),
                      Container(  
                        width: 300,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white70),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock, color: Colors.indigo),
                            border: InputBorder.none,
                            hintText: "Mật khẩu",
                            hintStyle: GoogleFonts.montserrat(color: Colors.grey)
                            ),
                          ),  
                      ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context, MaterialPageRoute(builder: (
                            context) => HomeScreen()));
                      },
                      child: Container(
                        width: 300,
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
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
                            "Xác nhận", 
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
                          builder: (context) => Forgotpassword()));
                    },
                    child: Text(
                      "Quên mật khẩu?", 
                      style: GoogleFonts.montserrat(
                         color: Colors.grey[600] , 
                         fontWeight: FontWeight.bold
                         ),
                        ),
                  ), 
                  SizedBox(height:20),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (context) => Signup()));
                    },
                    child: Text(
                      "Tạo tài khoản mới",
                    style: GoogleFonts.montserrat(
                      color: Colors.red[800] ,
                      fontWeight: FontWeight.bold
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