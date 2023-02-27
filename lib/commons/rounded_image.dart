import 'package:flutter/cupertino.dart';

class RoundedImage extends StatelessWidget {
  final String imagePath;
  final Size size;
  const RoundedImage({super.key, required this.imagePath, this.size = const Size.fromWidth(120)});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imagePath,
        width: size.width,
        height: size.width,
        fit: BoxFit.fill,
      ),
    );
  }
}
