import 'dart:ui';

import 'package:dating_app/styleguide/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OpaqueImage extends StatelessWidget {

  final imageUrl;
  const OpaqueImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imageUrl,
          height: double.maxFinite,
          width: double.maxFinite,
          fit: BoxFit.fill,
        ),
        Container(
          color: primaryColorOpacity.withOpacity(0.85),
        )
      ],
    );
  }
}