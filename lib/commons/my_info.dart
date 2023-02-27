import 'package:dating_app/commons/radial_progress.dart';
import 'package:dating_app/commons/rounded_image.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const RadialProgress(
            width: 4,
            goalCompleted: 0.9,
            child: RoundedImage(
              imagePath: "assets/images/anne.jpeg",
              size: Size.fromWidth(120),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Anne Grethe",
                style: whiteNameTextStyle,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "24",
                style: whiteNameTextStyle,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/location_pin.png",
                width: 20.0,
                color: Colors.white,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "34 Kilometers",
                style: whiteSubHeadingTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
