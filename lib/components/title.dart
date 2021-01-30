import 'package:flutter/material.dart';

import '../constants.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: kTextColor,
              letterSpacing: 3
            ),
          )
        ],
      ),
    );
  }
}
