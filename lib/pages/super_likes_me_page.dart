import 'package:dating_app/styleguide/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../commons/narrow_app_bar.dart';
import '../styleguide/text_style.dart';

class SuperLikesMePage extends StatelessWidget {
  const SuperLikesMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NarrowAppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
        trailing: const Text("SELECT", style: actionMenuStyle),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Super Liked Me",
              style: headingTextStyle.copyWith(color: Colors.black),
            ),
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search",
                  hintStyle:
                      whiteSubHeadingTextStyle.copyWith(color: hintTextColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  "Super Likes",
                  style: subTitleStyle.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: primaryColor),
                  child: const Text(
                    "5",
                    style: whiteSubHeadingTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Spacer(),
                Text(
                  "1h",
                  style: subTitleStyle.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),
          // It will take whole your remaining space.
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  // ListTile gives us access to control all the trailing and leading widgets which are supposed to be added.
                  child: ListTile(
                    title: const Text(
                      "Anne",
                      style: titleStyle,
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          "assets/icons/location_pin.png",
                          width: 15.0,
                          height: 15.0,
                          color: Colors.black,
                        ),
                        Text(
                          "  34 kilometers",
                          style: whiteSubHeadingTextStyle.copyWith(
                              color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                    // without clipoval the image will be displayed in rectangular shape by default.
                    leading: ClipOval(
                      child: Image.asset(
                        "assets/images/anne.jpeg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 75,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 15,
                                  height: 15,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                ),
                                // Space takes as much space it can take.
                                const Spacer(),
                                Text(
                                  "ONLINE",
                                  style: whiteSubHeadingTextStyle.copyWith(
                                      color: Colors.green, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Icon(
                              Icons.star,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
