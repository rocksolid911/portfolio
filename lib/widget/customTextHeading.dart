import 'package:flutter/material.dart';
import 'package:portfolio/provider/themeProvider.dart';
import 'package:provider/provider.dart';

import 'adaptiveText.dart';

class CustomSectionHeading extends StatelessWidget {
  final String text;

  const CustomSectionHeading({ Key? key,  required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return AdaptiveText(
      text, textAlign: TextAlign.justify, style: TextStyle(color: Colors.white),
      // style: GoogleFonts.montserrat(
      //   fontSize: MediaQuery.of(context).size.height * 0.075,
      //   fontWeight: FontWeight.w100,
      //   letterSpacing: 1.0,
      //   color: _themeProvider.lightTheme ? Colors.black : Colors.white,
      // ),
    );
  }
}

class CustomSectionSubHeading extends StatelessWidget {
  final String text;

  const CustomSectionSubHeading({Key? key,  required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return AdaptiveText(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w200,
        color: _themeProvider.lightTheme ? Colors.black : Colors.white,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
