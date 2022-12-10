import 'package:flutter/material.dart';

class BuildingBody extends StatefulWidget {
  const BuildingBody({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildingBody> createState() => _BuildingBodyState();
}

class _BuildingBodyState extends State<BuildingBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.cyan,
      child: Text("Maruf Ahmed Robin"),
    );
  }
}
