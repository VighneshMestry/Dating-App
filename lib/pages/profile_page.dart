import 'package:dating_app/commons/my_info.dart';
import 'package:dating_app/pages/super_likes_me_page.dart';
import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

import '../commons/opaque_image.dart';
import '../commons/profile_info_big_card.dart';
import '../commons/profile_info_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(

            children: [
              Expanded(
                flex: 4,
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
                              child: Text(
                                "My Profile",
                                style: whiteNameTextStyle,
                                textAlign: TextAlign.left,
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          const ProfileInfoBigCard(
                            firstText: "13",
                            secondText: "New Matches",
                            icon: Icon(
                              Icons.star,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigCard(
                            firstText: "21",
                            secondText: "Unmatched",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              color: blueColor,
                              width: 32,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigCard(
                            firstText: "264",
                            secondText: "All Matches",
                            icon: Image.asset(
                              "assets/icons/checklist.png",
                              color: blueColor,
                              width: 32,
                            ),
                          ),
                          const ProfileInfoBigCard(
                            firstText: "42",
                            secondText: "Rematches",
                            icon: Icon(
                              Icons.refresh,
                              color: blueColor,
                              size: 32,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          const ProfileInfoBigCard(
                            firstText: "404",
                            secondText: "Profile Visitors",
                            icon: Icon(
                              Icons.remove_red_eye,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                          GestureDetector(
                            // onTap: Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (context) => const SuperLikesMePage(),
                            //   ),
                            // ),
                            child: const ProfileInfoBigCard(
                              firstText: "42",
                              secondText: "Super Likes",
                              icon: Icon(
                                Icons.favorite,
                                color: blueColor,
                                size: 32,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          // Positioned also requires atleast one vertical component and two horizontal components
          Positioned(
            top: screenHeight * (4/9) - 80/2,
            left: 16,
            right: 16,
            child: Row(
              children: [
                ProfileInfoCard(
                  firstText: "54%",
                  secondText: "Progress"
                ),
                ProfileInfoCard(
                  hasImage: true,
                  imagePath: "assets/icons/pulse.png",
                ),
                ProfileInfoCard(
                  firstText: "152",
                  secondText: "Level"
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
