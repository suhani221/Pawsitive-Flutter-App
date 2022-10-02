import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

TextButton homeScreenCardDetails(String heading, context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/schedule_tab');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 23.0,
            width: 120.0,
            color: Colors.transparent,
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Center(
                  child: Text(heading,
                    style: const TextStyle(color: Colors.black, fontSize:14, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,),
                )),
          ),
          const SizedBox(height: 20,),
          const Text('TUESDAY 5:30PM',
            style: TextStyle(color: Colors.white70, fontSize:12),
            textAlign: TextAlign.center,),
          const Text('DR. XYZ',
            style: TextStyle(color: Colors.white, fontSize:24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
          const Text('Pet Clinic',
            style: TextStyle(color: Colors.white, fontSize:24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
        ],),
    );
  }

TextButton goToArticle(String heading, String URL, String line1, String line2) {
  final Uri url = Uri.parse(URL);

  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }}
  return TextButton(
    onPressed: _launchUrl,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 23.0,
          width: 120.0,
          color: Colors.transparent,
          child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              child: Center(
                child: Text(heading,
                  style: const TextStyle(color: Colors.black, fontSize:14, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,),
              )),
        ),
        const SizedBox(height: 20,),
        const Text('TUESDAY 5:30PM',
          style: TextStyle(color: Colors.white70, fontSize:12),
          textAlign: TextAlign.center,),
         Text(line1,
          style: TextStyle(color: Colors.white, fontSize:24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
         Text(line2,
          style: TextStyle(color: Colors.white, fontSize:24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
      ],),
  );
}

TextButton profileDetails(String heading, String line1, String line2, String line3, context) {
  return TextButton(
    onPressed: () {
      Navigator.pushNamed(context, '/vaccine_timeline');
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(heading,
          style: const TextStyle(color: Colors.white, fontSize:20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
        const SizedBox(height: 20,),
        Text(line1,
          style: TextStyle(color: Colors.white70, fontSize:16),
          textAlign: TextAlign.center,),
        Text(line2,
          style: TextStyle(color: Colors.white70, fontSize:16),
          textAlign: TextAlign.center,),
        Text(line3,
          style: TextStyle(color: Colors.white70, fontSize:16),
          textAlign: TextAlign.center,)
      ],),
  );
}
