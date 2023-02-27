import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class ProfileInfoBigCard extends StatelessWidget {

  final String firstText;
  final String secondText;
  final Widget icon;

  const ProfileInfoBigCard({super.key, required this.firstText, required this.secondText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 24),
        child: Column(
          children: [
            Align
            (
              alignment: Alignment.topRight,
              child: icon),
            Text(firstText, style: titleStyle,),
            Text(secondText, style: subTitleStyle,),
          ],
        ),
      ),
    );
  }
}
