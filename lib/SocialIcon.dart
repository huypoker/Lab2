import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function press;
  const SocialIcon({
    Key key, 
    this.iconSrc, 
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal:5),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration( 
         shape: BoxShape.circle,
         ),
         child: SvgPicture.asset(
          iconSrc,
          height: 30,
          width: 30,
         ),
      ),
    );
  }
}


