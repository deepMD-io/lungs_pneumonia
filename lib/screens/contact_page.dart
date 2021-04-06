import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lungs_pneumonia/utils/methods.dart';

String socialLink;

Widget contactPage(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
              color: Color(0xfff7941d),
              fontSize: 18,
              fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffffffff),
        // elevation: 0,
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 5),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 1),
                  child: SingleChildScrollView(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(children: <Widget>[
                          ListTile(
                            leading: Icon(FontAwesomeIcons.user,
                                color: Color(0xfff7941d), size: 30),
                            title: Text(
                              "Ali Murat Çevik",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[800]),
                            ),
                            subtitle: Text("Mobile Application Developer"),
                          ),
                          Container(
                            height: 0.3,
                            color: Colors.grey[400],
                          ),
                          ListTile(
                            leading: new Icon(FontAwesomeIcons.linkedin,
                                color: Color(0xfff7941d), size: 30),
                            title: new Text(
                              "Linkedin",
                              style: new TextStyle(
                                  fontSize: 14, color: Colors.grey[800]),
                            ),
                            subtitle: Text("My personal account"),
                            onTap: () {
                              socialLink = "http://linkedin.com/in/alimcevik";
                              siteyeGit(socialLink);
                            },
                          ),
                          Container(
                            height: 0.3,
                            color: Colors.grey[400],
                          ),
                          ListTile(
                            leading: new Icon(Icons.local_post_office,
                                color: Color(0xfff7941d), size: 30),
                            title: new Text(
                              "alimurat@yazilimkaravani.net",
                              style: new TextStyle(
                                  fontSize: 14, color: Colors.grey[800]),
                            ),
                            subtitle: Text("Contact me"),
                            onTap: () {
                              Navigator.pushNamed(context, mailGonder());
                            },
                          ),
                          Container(
                            height: 0.3,
                            color: Colors.grey[400],
                          ),
                          ListTile(
                            leading: new Icon(FontAwesomeIcons.globe,
                                color: Color(0xfff7941d), size: 30),
                            title: new Text(
                              "www.yazilimkaravani.net",
                              style: new TextStyle(
                                  fontSize: 14, color: Colors.grey[800]),
                            ),
                            subtitle: Text("Visit my blog!"),
                            onTap: () {
                              socialLink = "https://yazilimkaravani.net";
                              siteyeGit(socialLink);
                            },
                          ),
                        ]),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(color: Colors.white),
      ));
}
