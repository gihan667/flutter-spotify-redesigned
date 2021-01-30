import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_redesign/components/app_bar.dart';
import 'package:spotify_redesign/components/tab_bar.dart';
import 'package:spotify_redesign/constants.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'GOOD MORNING, CODE CRAFTS!'),
      body: Body(),
      bottomNavigationBar: CustomTabBar(),
    );
  }
}
