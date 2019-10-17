import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Text("contacts:build");
  }

  @override
  void initState() {
    super.initState();
    print("Contacts:initState：");
  }

  @override
  void dispose() {
    super.dispose();
    print("contacts:dispose：");
  }
}
