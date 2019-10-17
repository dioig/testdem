import 'package:flutter/material.dart';
import 'package:flutter_app2/Contacts.dart';
import 'package:flutter_app2/Personal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'MessagePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //当前选中页面索引
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    message = MessagePage();
    contacts = Contacts();
    me = Personal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        //底部导航按钮
        bottomNavigationBar: new BottomNavigationBar(
          //通过fixedColor设置选中item 的颜色
          type: BottomNavigationBarType.fixed,
          //当前页面索引
          currentIndex: _currentIndex,
          //按下后设置当前页面索引
          onTap: ((index) {
            setState(() {
              _currentIndex = index;
            });
          }),
          //底部导航按钮项
          items: [
            //导航按钮项传入文本及图标
            new BottomNavigationBarItem(
                title: new Text(
//                DemoLocalizations.of(context).message,
                  "消息",

                  ///国家化语言转换
                  style: TextStyle(
                      color: _currentIndex == 0
                          ? Theme.of(context).primaryColor
                          : Color(0xff999999)),
                ),
                //判断当前索引作图片切换显示
                icon: Icon(Icons.add)),
            new BottomNavigationBarItem(
                title: new Text(
                  '通讯录',
                  style: TextStyle(
                      color: _currentIndex == 1
                          ? Theme.of(context).primaryColor
                          : Color(0xff999999)),
                ),
                icon: Icon(Icons.close)),
//            new BottomNavigationBarItem(
//                title: new Text(
//                  '探索',
//                  style: TextStyle(
//                      color: _currentIndex == 2
//                          ? Theme.of(context).primaryColor
//                          : Color(0xff999999)),
//                ),
//                //判断当前索引作图片切换显示
//                icon: _currentIndex == 2
//                    ? Image.asset(
//                        'images/nav_explore_s.png',
//                        width: ScreenUtil.instance.setSp(32),
//                        height: ScreenUtil.instance.setSp(28),
//                        color: Theme.of(context).primaryColor,
//                      )
//                    : Image.asset(
//                        'images/nav_explore_n.png',
//                        width: ScreenUtil.instance.setSp(32),
//                        height: ScreenUtil.instance.setSp(28),
//                        color: Color(0xff999999),
//                      )),
            new BottomNavigationBarItem(
                title: new Text(
                  '我',
                  style: TextStyle(
                      color: _currentIndex == 2
                          ? Theme.of(context).primaryColor
                          : Color(0xff999999)),
                ),
                icon: Icon(Icons.forward)),
          ],
        ),
        //中间显示当前页面
        body: currentPage());
  }

  //聊天页面
  MessagePage message;

  //好友页面
  Contacts contacts;

  //我的页面
  Personal me;

  //根据当前索引返回不同的页面的ss
  currentPage() {
    switch (_currentIndex) {
      case 0:
        return message;
      case 1:
        return contacts;
      //暂时去掉
//      case 2:
//        if (explorePage == null) {
//          explorePage = new ExplorePage();
//        }
//        return explorePage;
      case 2:
        return me;
      default:
    }
  }
}
