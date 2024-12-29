

import 'package:first_project_app/contanst.dart';
import 'package:first_project_app/screens/home_screnn.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome Customers',
      theme: ThemeData(
        primaryColor: kBackgroundColor,
        hintColor: kPrimaryColor,
      ),
      home: HomeScreen(),
    );
  }
}