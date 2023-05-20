import 'package:flutter/material.dart';
import 'package:portfolio/provider/themeProvider.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class OutlinedCustomBtn extends StatelessWidget {
  final String btnText;
  final void Function() onPressed;

  const OutlinedCustomBtn(
      { Key? key,  required this.btnText,  required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialButton(
      hoverColor: kPrimaryColor.withAlpha(150),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: const BorderSide(color: kPrimaryColor)),
      onPressed: onPressed,
      child: Text(
        btnText,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          color: _themeProvider.lightTheme ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}

class CustomFilledBtn extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  final void Function() onPressed;
  final Color btnColor;
  const CustomFilledBtn(
      { Key? key,
       required this.height,
       required this.btnColor,
      this.width = 200.0,
       required this.onPressed,
       required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        color: btnColor,
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
