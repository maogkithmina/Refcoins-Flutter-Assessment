import 'package:flutter/material.dart';
import 'package:refcoin_assignment/views/sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
        primarySwatch: Colors.blue,
      ),
      home: RefcoinsSignInView(),
    );
  }
}
