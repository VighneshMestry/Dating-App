import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/cupertino.dart';

class TwoLineItem extends StatelessWidget {

  final firstText, secondText;

  const TwoLineItem({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(firstText, style: titleStyle,),
        Text(secondText, style: subTitleStyle,),
      ],
    );
  }
}