import 'package:flutter/material.dart';
import 'package:media_booster_login/screens/home/view/home_screen.dart';
import 'package:media_booster_login/screens/signin/view/signin_screen.dart';
import 'package:media_booster_login/screens/welcome/view/welcome_screen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => home_screen(),
        'signIn':(context) => signin_screen(),
        'welcome':(context) => welcome_screen(),
      },
    ),
  );
}