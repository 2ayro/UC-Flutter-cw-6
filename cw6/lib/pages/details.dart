import 'package:cw6/buildings.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.yousef});

  final Building yousef;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Details"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.network(yousef.imgUrl),
          SizedBox(height: 40),
          Text(yousef.name),
          SizedBox(height: 60),
          Text(yousef.description),
        ])));
  }
}
