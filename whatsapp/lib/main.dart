import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
    theme: ThemeData(
      primaryColor: Color(0xff075E54),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xff25D366))
    ),
    debugShowCheckedModeBanner: false,
  ));
}

