import 'package:flutter/material.dart';

Widget homePage() {
  return Scaffold(
      body: Container(
    child: Container(
        child: Center(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 5),
            ),
            Padding(
              child: new Container(
                child: new Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new ListTile(
                            leading: new Icon(Icons.phone_iphone,
                                color: Color(0xfff7941d), size: 30),
                            title: new Text(
                              'Summary',
                              style: new TextStyle(
                                  fontFamily: "SF UI Display",
                                  fontSize: 18,
                                  color: Color(0xfff7941d),
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text(
                              '\nAfter the Covid-19 epidemic, which affected the whole world, many new concepts entered our daily life. Covid-19, which started to grow with the trio of mask, distance and hygiene, incorporated concepts such as pneumonia and pneumonia in the following periods. My wish is that this epidemic ends before any more living beings are harmed. The aim of this article is to obtain a Tensorflow Lite output with Google products based on the data set containing lung x-rays in Kaggle and develop a mobile application using Flutter SDK.',
                              style: TextStyle(
                                  fontFamily: "SF UI Display",
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ]),
                  ),
                ),
                padding: const EdgeInsets.all(0.0),
                alignment: Alignment.center,
              ),
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 5),
            ),
            Padding(
              child: new Container(
                child: new Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new ListTile(
                            leading: new Icon(Icons.healing_outlined,
                                color: Color(0xfff7941d), size: 30),
                            title: new Text(
                              'What is Pneumonia?',
                              style: new TextStyle(
                                  fontFamily: "SF UI Display",
                                  fontSize: 16,
                                  color: Color(0xfff7941d),
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text(
                              "\nInflammation of the lung tissue; pneumonia.Explanation: Viruses in the coronavirus family can cause colds, pneumonia and various respiratory infections in humans. COVID-19 pneumonia is caused by SARS-CoV-2.",
                              style: TextStyle(
                                  fontFamily: "SF UI Display",
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ]),
                  ),
                ),
                padding: const EdgeInsets.all(0.0),
                alignment: Alignment.center,
              ),
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 5),
            ),
          ],
        ),
      ),
    )),
    decoration: BoxDecoration(
      image: new DecorationImage(
          image: new AssetImage("assets/images/back1.png"), fit: BoxFit.cover),
    ),
  ));
}
