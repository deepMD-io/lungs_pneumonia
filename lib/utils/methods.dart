import 'package:url_launcher/url_launcher.dart';

siteyeGit(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

mailGonder() async {
  var url = 'mailto:' +
      'info@yazilimkaravani.net' +
      '?subject=SUPPORT | Pneumonia Detection&body=';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
