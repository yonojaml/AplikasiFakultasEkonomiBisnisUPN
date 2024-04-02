import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      if (url.startsWith('mailto:')) {
        final emailAddress = url.replaceAll('mailto:', '');
        await launch('mailto:$emailAddress');
      } else {
        throw 'Could not launch $url';
      }
    }
  }