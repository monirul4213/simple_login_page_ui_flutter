import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class screen extends StatelessWidget {
  const screen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Daily Attendance"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Icon(
                Icons.people,
                color: Colors.white,
                size: width / 5,
              ),
              width: width,
              height: height / 3,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: height / 35),
              child: Text(
                "Login",
                style: GoogleFonts.sofia(fontSize: width / 18),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width / 35),
              alignment: Alignment.topLeft,
              child: Text(
                "Employee ID",
                style: GoogleFonts.actor(fontSize: width / 20),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(
                  horizontal: width / 35, vertical: height / 35),
              padding: EdgeInsets.symmetric(horizontal: width / 35),
              child: Row(children: [
                Icon(
                  Icons.people,
                  color: Colors.red,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Employee ID",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: width / 35),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width / 35),
              alignment: Alignment.topLeft,
              child: Text(
                "Password",
                style: GoogleFonts.actor(fontSize: width / 20),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(
                  horizontal: width / 35, vertical: height / 35),
              padding: EdgeInsets.symmetric(horizontal: width / 35),
              child: Row(children: [
                Icon(
                  Icons.people,
                  color: Colors.red,
                ),
                Expanded(
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: width / 35),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
