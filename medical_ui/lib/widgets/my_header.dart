import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  final double height;
  final String imageUrl;
  final Widget child;

  const MyHeader({
    Key key,
    @required this.height,
    @required this.imageUrl,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyCliper(),
      child: Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill)),
        child: child,
      ),
    );
  }
}

class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    // x1, y1是锚点，x2，y2是目的点
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

