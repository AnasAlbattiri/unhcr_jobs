import 'package:flutter/material.dart';

import 'app_colors.dart';

Text defaultText(
    {FontWeight? fontWeight,
    required String text,
    required Color color,
    required double fontSize}) {
  return Text(
    text,
    maxLines: 2,
    style: TextStyle(
      fontFamily: 'Circular',
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      overflow: TextOverflow.ellipsis,

    ),
  );
}

AppBar appBar(BuildContext context){
  return AppBar(
    leading: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.arrow_back,
        color: bColor,
      ),
    ),
    backgroundColor: wColor,
    elevation: 0.0,
  );
}
