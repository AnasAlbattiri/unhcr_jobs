import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://pbs.twimg.com/media/FEZhc-qXEAINXC7.jpg:large',
          fit: BoxFit.cover,
        ),),
    );
  }
}
