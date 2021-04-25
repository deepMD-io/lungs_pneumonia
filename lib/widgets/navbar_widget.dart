import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:lungs_pneumonia/screens/navbar_contact_screen.dart';
import 'package:lungs_pneumonia/screens/navbar_home_screen.dart';
import 'package:lungs_pneumonia/screens/navbar_scan_screen.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

class NavbarPage extends StatefulWidget {
  NavbarPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NavbarPageState createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {
  int selectedPos = 0;
  double bottomNavBarHeight = 60;

  @override
  void initState() {
    super.initState();
    _navigationController = new CircularBottomNavigationController(selectedPos);
  }

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.home, "Home", Color(0xfff7941d),
        labelStyle:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
    new TabItem(Icons.remove_red_eye, "Scan", Color(0xfff7941d),
        labelStyle:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
    new TabItem(Icons.info, "Contact", Color(0xfff7941d),
        labelStyle:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
  ]);

  CircularBottomNavigationController _navigationController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Padding(
            child: bodyContainer(),
            padding: EdgeInsets.only(bottom: bottomNavBarHeight),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  bodyContainer() {
    switch (selectedPos) {
      case 0:
        return homePage(context);
        break;
      case 1:
        return ScanPage();
        break;
      case 2:
        return contactPage(context);
        break;
    }
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      barHeight: bottomNavBarHeight,
      barBackgroundColor: Colors.orange,
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int selectedPos) {
        setState(() {
          this.selectedPos = selectedPos;
          print(_navigationController.value);
        });
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _navigationController.dispose();
  }
}
