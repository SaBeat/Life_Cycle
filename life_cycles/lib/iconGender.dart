import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconCinsiyyet extends StatelessWidget {
  IconData icon;
  final String cins;
  IconCinsiyyet({this.cins, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.amber,
          size: 45,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cins,
          style: TextStyle(
            fontSize: 24,
            color: Colors.amber[300],
          ),
        ),
      ],
    );
  }
}