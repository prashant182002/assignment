import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Icon icon;
  final String iconTitle;
  final int countryIndex;
  CustomCard({Key? key, required this.icon, required this.iconTitle, required this.countryIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [

        ],
      ),
    );
  }
}
