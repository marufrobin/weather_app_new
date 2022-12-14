import 'package:flutter/material.dart';
import 'package:weather_app_new/custom_http.dart';

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
    // final weatherList = ;
    return FutureBuilder(
      initialData: CustomHttp.fatchingData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text("Somthing error");
        } else if (snapshot.data == null) {
          return Text("No Data found");
        }
        return Container(
          child: Text("data::::${snapshot.data}"),
        );
      },
    );
  }
}
