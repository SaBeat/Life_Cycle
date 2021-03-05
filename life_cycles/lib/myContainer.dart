import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color renk;
  final Widget child;
  final Function onPress;
  MyContainer({this.child, this.renk = Colors.white, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: renk,
        ),
      ),
    );
  }
}
