import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

import '../commons/opaque_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 3,
                child: Stack(
                  children: [
                    const OpaqueImage(
                      imageUrl: "assets/images/anne.jpeg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: const [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("My Profile", style: whiteNameTextStyle, textAlign: TextAlign.left,),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  color: secondaryTextColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
