import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_redesign/constants.dart';

class ExploreButton extends StatelessWidget {
  const ExploreButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DelayedDisplay(
              delay: Duration(microseconds: 100),
              fadingDuration: Duration(milliseconds: 600),
              slidingBeginOffset: const Offset(-1.0, 0.0),
              child: Container(
                width: size.width * 0.3,
                child: TextButton(
                  child: Text(
                    'EXPLORE',
                    style: TextStyle(
                      color: kTextColor,
                      letterSpacing: 3,
                      fontSize: 10,
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)
                    )
                  ),
                  onPressed: () {},
                ),
              ),
            ),

            DelayedDisplay(
              delay: Duration(microseconds: 100),
              fadingDuration: Duration(milliseconds: 600),
              slidingBeginOffset: const Offset(1.0, 0.0),
              child: Container(
                width: size.width * 0.6,
                child: OutlineButton.icon(
                  onPressed: (){},
                  label: SvgPicture.asset('assets/icons/spotify.svg'),
                  icon: Text(
                    'UPGRADE TO PREMIUM',
                    style: TextStyle(
                      color: kTextColor,
                      letterSpacing: 2,
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0)
                  ),
                  borderSide: BorderSide(
                    color: Colors.white
                  ),
                  highlightedBorderColor: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}