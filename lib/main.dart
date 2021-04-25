import 'package:flutter/material.dart';
import 'package:lungs_pneumonia/widgets/navbar_widget.dart';
import 'package:lungs_pneumonia/screens/intro_screen.dart';

void main() {
  runApp(MaterialApp(
    color: Colors.orange,
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    routes: {
      '/navbar': (context) => NavbarPage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OnBoardingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splashScreen.png"),
                fit: BoxFit.cover)),
      ),
    );
  }
}
