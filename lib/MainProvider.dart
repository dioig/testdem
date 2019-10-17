import 'dart:async';

import 'package:flutter/material.dart';

///全局 状态管理 处理语言包等
class MainProvider extends ChangeNotifier {
  StreamController<bool> _controller = StreamController();


  StreamController<bool> get controller => _controller;

  String _str="sssss" ;


  String get str => _str;

  @override
  void dispose() {
    super.dispose();
    _controller.close();
  }


  static MainProvider _instance = MainProvider();

  static MainProvider getInstance() => _instance;
}
