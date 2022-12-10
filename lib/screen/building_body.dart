import 'package:flutter/material.dart';

class BuildingBody extends StatefulWidget {
  const BuildingBody({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildingBody> createState() => _BuildingBodyState();
}

class _BuildingBodyState extends State<BuildingBody> {
  String apiToken = "175cf6ab4459aa37983a566b55f6167f";

  addData() async {
    String url =
        "https://api.openweathermap.org/data/2.5/weather?lat=37.4219983&lon=-122.084&units=metric&appid=$apiToken";
    var resonpce = await Uri.parse(url);
    print("Responce: ${resonpce}");
  }

  @override
  void initState() {
    addData();
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
