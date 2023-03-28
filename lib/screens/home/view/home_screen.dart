import 'package:flutter/material.dart';

import '../../../utils/shared.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -180,
              right: -50,
              child: Container(
                height: 330,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.blue.shade300, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: -128,
              left: -60,
              child: Container(
                height: 330,
                width: 330,
                decoration:
                    BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
              ),
            ),
            Positioned(
              top: -160,
              left: -120,
              child: Container(
                height: 330,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.blue.shade800, shape: BoxShape.circle),
              ),
            ),
            Positioned(
                top: 230,
                left: 90,
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade800,
                      fontSize: 30),
                )),
            Positioned(
              top: 300,
              right: 10,
              child: Container(
                width: 330,
                child: TextField(
                  controller: txtemail,
                  decoration: InputDecoration(
                      icon: Icon(Icons.email, color: Colors.blue),
                      label: Text(
                        "email",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ),
            Positioned(
              top: 380,
              right: 10,
              child: Container(
                width: 330,
                child: TextField(
                  controller: txtpass,
                  decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: Colors.blue),
                      label: Text(
                        "Password",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ),
            Positioned(
              top: 470,
              left: 140,
              child: InkWell(
                onTap: () async {
                  String usremail = txtemail.text;
                  String usrpassword = txtpass.text;

                  Shr shr = Shr();
                  Map m1 = await shr.read();

                  if (usremail == m1['e1'] && usrpassword == m1['p1']) {
                    Navigator.pushNamed(context, 'welcome');
                  } else
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                      "Invalid email or password\n Enter the email or password again",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )));
                  }
                },
                child: Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Colors.blue.shade800,
                        Colors.blue.shade300,
                        Colors.blue
                      ])),
                  child: Center(
                      child: Text("Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            ),
            Positioned(
                top: 600,
                left: 80,
                child: Text(
                  "Already have an Account?",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )),
            Positioned(
              top: 585,
              left: 250,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'signIn');
                },
                child: Text("Sign In",
                    style: TextStyle(fontSize: 15, color: Colors.blueAccent)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
