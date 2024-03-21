import 'package:flutter/material.dart';

class Dividerr extends StatelessWidget {
  const Dividerr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      height: 1,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black,Colors.white,Colors.black],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )
      ),
    );
  }
}
