import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 200),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        decoration: new BoxDecoration(
          color: kTabBarColor,
          borderRadius: BorderRadius.circular(80.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(40),
              blurRadius: 6,
              offset: const Offset(0, 0)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabItem(
              name: 'HOME',
              icon: 'assets/icons/home.svg',
              tapEvent: () {},
              isActive: true,
              timeFactor: 1,
            ),
            TabItem(
              name: 'SEARCH',
              icon: 'assets/icons/search.svg',
              tapEvent: () {},
              isActive: false,
              timeFactor: 2,
            ),
            TabItem(
              name: 'LIBRARY',
              icon: 'assets/icons/library.svg',
              tapEvent: () {},
              isActive: false,
              timeFactor: 3,
            ),
            TabItem(
              name: 'PROFILE',
              icon: 'assets/icons/profile.svg',
              tapEvent: () {},
              isActive: false,
              timeFactor: 4,
            ),
          ],
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({
    Key key,
    @required this.icon,
    @required this.name,
    @required this.tapEvent,
    @required this.isActive,
    @required this.timeFactor,
  }) : super(key: key);

  final String icon, name;
  final GestureTapCallback tapEvent;
  final bool isActive;
  final int timeFactor; // for delayed animation

  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: Duration(milliseconds: 400 * timeFactor),
      slidingBeginOffset: const Offset(-1.0, 0),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(5.0),
          height: 50.0,
          width: 50.0,
          decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: isActive ? kPrimaryColor : Colors.transparent
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                color: kTextColor,
                height: 18.0,
              ),
              SizedBox(height: 4.0),
              Text(
                name,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
