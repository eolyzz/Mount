import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundBlur extends StatelessWidget {
  const BackgroundBlur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        child: Stack(
          children: [
            // blur effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Container(),
            ),

            // gradient effect

            // child
          ],
        ),
      ),
    );
  }
}
