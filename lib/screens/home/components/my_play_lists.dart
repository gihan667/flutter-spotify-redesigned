import 'package:flutter/material.dart';
import 'package:spotify_redesign/Models/PlayList.dart';
import 'package:spotify_redesign/screens/home/components/play_list_card.dart';

import '../../../constants.dart';

class MyPlayLists extends StatelessWidget {
  const MyPlayLists({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, bottom: kDefaultPadding),
          child: Row(
            children: [
              ...List.generate(
                demoPlayLists.length,
                (index) {
                  return PlayListCard(playListItem: demoPlayLists[index], index: index);
                }
              )
            ],
          ),
        )
      ],
    );
  }
}