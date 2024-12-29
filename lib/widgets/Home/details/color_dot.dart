import 'package:flutter/material.dart';

import '../../../contanst.dart';

class ProductImage extends StatelessWidget {
  const  ColorDot({
    Key Key,
    this.isSelected = false,
    this.fillColor,
  }) : super(key: key)

  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {

    Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      padding: EdgeInsets.all(3.0),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: isSelected ? kTextLightColor : Colors.transparent),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}
