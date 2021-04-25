import 'package:flutter/material.dart';

Widget homePage(BuildContext context) {
  return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 46, 20, 10),
            child: Column(
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
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
                              '\nAfter the Covid-19 epidemic, which affected the whole world, many new concepts entered our daily life. Covid-19, which started to grow with the trio of mask, distance and hygiene, incorporated concepts such as pneumonia and pneumonia in the following periods. My wish is that this epidemic ends before any more living beings are harmed. The aim of this application is to obtain a Tensorflow Lite output with Google products based on the data set containing lung x-rays in Kaggle and develop a mobile application using Flutter SDK.',
                              style: TextStyle(
                                  fontFamily: "SF UI Display",
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Divider(),
                          ListTile(
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
                          Divider(),
                          ListTile(
                            leading: new Icon(Icons.info,
                                color: Color(0xfff7941d), size: 30),
                            title: new Text(
                              'Note',
                              style: new TextStyle(
                                  fontFamily: "SF UI Display",
                                  fontSize: 16,
                                  color: Color(0xfff7941d),
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: Text(
                              "\nThe results obtained from this application are not valid for medical diagnosis. The results must be checked in the presence of a specialist.",
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
              ],
            ),
          ),
        ),
      ));
}
