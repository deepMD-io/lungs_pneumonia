import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/methods.dart';

String socialLink;
Widget contactPage(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(
        'Contact',
        style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),
      ),
      centerTitle: true,
      backgroundColor: Colors.orange,
      elevation: 0,
    ),
    body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 1),
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(children: <Widget>[
                Container(height: 20),
                Center(
                    child: Text(
                  "Yazılım Karavanı \u00a9  2021",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                      fontSize: 16),
                )),
                Container(height: 10),
                ListTile(
                  leading: Icon(FontAwesomeIcons.instagramSquare,
                      color: Colors.orange, size: 30),
                  title: Text(
                    "@yazilimkaravani",
                    style: TextStyle(fontSize: 14, color: Colors.grey[800]),
                  ),
                  subtitle: Text("Follow us on Instagram"),
                  onTap: () {
                    socialLink = "https://instagram.com/yazilimkaravani";
                    siteyeGit(socialLink);
                  },
                ),
                Container(
                  height: 0.3,
                  color: Colors.grey[400],
                ),
                ListTile(
                  leading: new Icon(FontAwesomeIcons.linkedin,
                      color: Colors.orange, size: 30),
                  title: new Text(
                    "yazilimkaravani",
                    style: new TextStyle(fontSize: 14, color: Colors.grey[800]),
                  ),
                  subtitle: Text("Contact us on LinkedIn"),
                  onTap: () {
                    socialLink = "http://linkedin.com/company/yazilim-karavani";
                    siteyeGit(socialLink);
                  },
                ),
                Container(
                  height: 0.3,
                  color: Colors.grey[400],
                ),
                ListTile(
                  leading: new Icon(Icons.local_post_office,
                      color: Colors.orange, size: 30),
                  title: new Text(
                    "support@yazilimkaravani.net",
                    style: new TextStyle(fontSize: 14, color: Colors.grey[800]),
                  ),
                  subtitle: Text("Write us on e-mail"),
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
                      color: Colors.orange, size: 30),
                  title: new Text(
                    "www.yazilimkaravani.net",
                    style: new TextStyle(fontSize: 14, color: Colors.grey[800]),
                  ),
                  subtitle: Text("Visit our blog!"),
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
    ),
  );
}

/*import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lungs_pneumonia/utils/methods.dart';

String socialLink;

Widget contactPage(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contact',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: new DecorationImage(
              image: new AssetImage("assets/images/background.png"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 1),
                  child: Card(
                    color: Colors.orange,
                    child: Column(children: <Widget>[
                      ListTile(
                        leading: new Icon(FontAwesomeIcons.linkedin,
                            color: Colors.white, size: 30),
                        title: new Text(
                          "Linkedin",
                          style: new TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Our Linkedin Account",
                          style: new TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          socialLink =
                              "https://www.linkedin.com/company/yazilim-karavani";
                          goToPage(socialLink);
                        },
                      ),
                      Container(
                        height: 0.3,
                        color: Colors.grey[400],
                      ),
                      ListTile(
                        leading: new Icon(Icons.local_post_office,
                            color: Colors.white, size: 30),
                        title: new Text(
                          "info@yazilimkaravani.net",
                          style: new TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Contact us",
                          style: new TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, sendMail());
                        },
                      ),
                      Container(
                        height: 0.3,
                        color: Colors.grey[400],
                      ),
                      ListTile(
                        leading: new Icon(FontAwesomeIcons.globe,
                            color: Colors.white, size: 30),
                        title: new Text(
                          "www.yazilimkaravani.net",
                          style: new TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Visit our blog!",
                          style: new TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          socialLink = "https://yazilimkaravani.net";
                          goToPage(socialLink);
                        },
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
*/
