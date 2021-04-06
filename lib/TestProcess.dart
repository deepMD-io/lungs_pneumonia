import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:lungs_pneumonia/screens/contact_page.dart';
import 'package:lungs_pneumonia/screens/home_page.dart';
import 'package:lungs_pneumonia/screens/scan_lungs.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';

class TestProcess extends StatefulWidget {
  TestProcess({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TestProcessState createState() => _TestProcessState();
}

class _TestProcessState extends State<TestProcess> {
  int selectedPos = 0;
  double bottomNavBarHeight = 60;

  @override
  void initState() {
    super.initState();
    _navigationController = new CircularBottomNavigationController(selectedPos);
  }

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.home, "Home", Color(0xfff7941d)),
    new TabItem(Icons.search, "Select Photo", Color(0xfff7941d)),
    new TabItem(Icons.info, "About", Color(0xfff7941d)),
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
        return homePage();
        break;
      case 1:
        return OpenGallery();
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
      barBackgroundColor: Colors.white,
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
