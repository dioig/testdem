
import 'package:flutter/material.dart';

class SoundWidget extends  StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SoundWidgetState();
  }
}

class SoundWidgetState extends State<SoundWidget>{
  @override
  Widget build(BuildContext context) {
    print("build：");
    return Text("测试界面");
  }

  @override
  void initState() {
    super.initState();
    print("initState：");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose：");
  }


}