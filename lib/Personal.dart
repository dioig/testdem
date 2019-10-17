import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return Text("Personal:build");
  }



  @override
  void initState() {
    super.initState();
    print("Personal:initState：");
  }

  @override
  void dispose() {
    super.dispose();
    print("Personal:dispose：");
  }


}
