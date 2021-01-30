import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

AppBar buildAppBar(BuildContext context, {String title}) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    brightness: Brightness.dark,
    elevation: 0,
    title: Text(
      title,
      style: TextStyle(
        color: kTextColor,
        fontWeight: FontWeight.bold,
        fontSize: 14,
        letterSpacing: 2
      ),
    ),
    centerTitle: false,
    actions: [
      IconButton(
        icon: ClipOval(child: SvgPicture.asset('assets/icons/radio.svg')),
        onPressed: () {},
      ),
      IconButton(
        icon: ClipOval(child: SvgPicture.asset('assets/icons/settings.svg')),
        onPressed: () {},
      )
    ],
  );
}