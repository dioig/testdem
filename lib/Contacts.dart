import 'package:flutter/material.dart';
import 'package:flutter_app2/MainProvider.dart';

class Contacts extends StatefulWidget {
  MainProvider provider;

  Contacts(this.provider);

  @override
  _State createState() => _State();
}

class _State extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Text("contacts:build$_isGet");
  }

  bool _isGet;

  @override
  void initState() {
    super.initState();
    print("Contacts:initState：");
    widget.provider.controller.stream.listen((isGet) {
      setState(() {
        _isGet = isGet;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    print("contacts:dispose：");
  }
}
