import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Container servicesButton(String imageVal, String heading, Color colourVal,
    double size_percent, context, X) {
  return Container(
    child: Column(
      children: [
        SizedBox(
          height: (MediaQuery.of(context).size).width *
              size_percent, //height of button
          width: (MediaQuery.of(context).size).width * size_percent,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFD9D9D9), // Background color
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(
                      color:
                          Color(0xFF1A1818))), // Text Color (Foreground color)
            ),
            onPressed: () {
              Navigator.pushNamed(context, X);
            },
            child: SizedBox(
                height: 90,
                width: 90,
                child: Image(image: AssetImage(imageVal))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(heading,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  fontFamily: 'Lato',
                  color: Colors.white38)),
        ),
      ],
    ),
  );
}

Container serviceButtonURL(
    String imageVal, String heading, Color colourVal, context, String URL) {
  final Uri _url = Uri.parse(URL);

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  return Container(
    child: Column(
      children: [
        SizedBox(
          height: (MediaQuery.of(context).size).width * 0.25, //height of button
          width: (MediaQuery.of(context).size).width * 0.25,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFD9D9D9), // Background color
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: const BorderSide(
                      color:
                          Color(0xFFD9D9D9))), // Text Color (Foreground color)
            ),
            onPressed: _launchUrl,
            child: SizedBox(
                height: 90,
                width: 90,
                child: Image(image: AssetImage(imageVal))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(heading,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  fontFamily: 'Lato',
                  color: Colors.white38)),
        ),
      ],
    ),
  );
}
