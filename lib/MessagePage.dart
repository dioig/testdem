import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Text("message:build");
  }



  @override
  void initState() {
    super.initState();
    print("message:initState：");
  }

  @override
  void dispose() {
    super.dispose();
    print("message:dispose：");
  }
}
