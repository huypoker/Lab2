import 'package:flutter/material.dart';
import 'package:flutter_application_1/ChangePassPage/numeric.dart';
import 'package:google_fonts/google_fonts.dart';


class VerifyPhone extends StatefulWidget {

  // final String phoneNumber;

  // VerifyPhone({required this.phoneNumber});

  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  String code = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Xác nhận mã code",
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Color(0xFF6200EA),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        textTheme: Theme.of(context).textTheme,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Padding(
                      padding: EdgeInsets.fromLTRB(5.0, 40.0, 5.0, 0),
                      child: Center (
                        child: Text(
                        "Mã xác nhận đã được gửi về mail của bạn.\n Vui lòng kiểm tra và nhập vào bên dưới.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: Color(0xFF818181),
                          ),
                        ),
                      )
                    ),

                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          buildCodeNumberBox(code.length > 0 ? code.substring(0, 1) : ""),
                          buildCodeNumberBox(code.length > 1 ? code.substring(1, 2) : ""),
                          buildCodeNumberBox(code.length > 2 ? code.substring(2, 3) : ""),
                          buildCodeNumberBox(code.length > 3 ? code.substring(3, 4) : ""),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            Container(
              height: MediaQuery.of(context).size.height * 0.13,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 30),
                child: Column(
                  children: [
                    Container (
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF6200EA),
                          borderRadius: BorderRadius.all(
                            Radius.circular(35),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Tiếp tục",
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:8),
                    Container (
                        child: Center(
                          child: Text(
                            "Gửi lại mã",
                            style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),

            NumericPad(
              onNumberSelected: (value) {
                print(value);
                setState(() {
                  if(value != -1){
                    if(code.length < 4){
                      code = code + value.toString();
                    }
                  }
                  else {
                    code = code.substring(0, code.length - 1);
                  }
                  print(code);
                });
              },
            ),
          ],
        )
      ),
    );
  }

  Widget buildCodeNumberBox(String codeNumber) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 65,
        height: 65,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF6F5FA),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black26,
                  // blurRadius: 25.0,
                  // spreadRadius: 1,
                  offset: Offset(0.0, 0.75)
              )
            ],
          ),
          child: Center(
            child: Text(
              codeNumber,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1F1F1F),
              ),
            ),
          ),
        ),
      ),
    );
  }
}