
import 'package:flutter/material.dart';
import 'package:spotify_redesign/components/title.dart';
import 'package:spotify_redesign/screens/home/components/popular_items.dart';
import 'package:spotify_redesign/screens/home/components/recently_played.dart';
import 'package:spotify_redesign/screens/home/components/year_wrap_up.dart';

import 'explore_button.dart';
import 'my_play_lists.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: SafeArea(
        child: Column(
          children: [
            TitleBar(title: 'MY PLAYLISTS'),

            MyPlayLists(),

            ExploreButton(),

            TitleBar(title: '2020 wrapped'),

            YearWrapup(),

            TitleBar(title: 'RECENTLY PLAYED'),

            RecentlyPlayed(),

            TitleBar(title: 'POPULAR'),

            PopularItems()
          ],
        ),
      ),
    );
  }
}