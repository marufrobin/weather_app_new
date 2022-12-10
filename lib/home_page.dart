import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  String title;
  HomePage({required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffFEE3BC),
            Color(0xffF39876),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: SvgPicture.asset(
            "images/search.svg",
          ),
          actions: [
            SvgPicture.asset(
              "images/menu.svg",
              fit: BoxFit.cover,
              height: 24,
              width: 24,
            )
          ],
        ),
      ),
    );
  }
}
