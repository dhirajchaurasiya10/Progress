import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 25, 9, 36),
      body: Container(
        padding: EdgeInsets.all(12),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "LogIn",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Who are you?",
              style: TextStyle(
                  color: Color.fromARGB(255, 96, 18, 168), fontSize: 35),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: Image.asset('images/user.jpg')),
                Expanded(child: Image.asset('images/contractor.jpg')),
                Expanded(child: Image.asset('images/officer.jpg')),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "User",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Contractor",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Officer",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: "Enter Name",
                  hintStyle: TextStyle(color: Colors.white),
                  fillColor: Color.fromARGB(255, 76, 61, 97),
                  // filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple, width: 1.5),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: "Enter Password",
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple, width: 1.5),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red))))),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.red),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
