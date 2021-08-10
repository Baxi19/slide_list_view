import 'package:flutter/material.dart';
import '../widgets/slide_list_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = "Login";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slide List View'),
        centerTitle: true,
      ),
      body: Container(
        child: SlideListView(
          view1: buildPage(Colors.deepPurple, "View 1"),
          view2: buildPage(Colors.indigo, "View 2"),
          floatingActionButtonColor: Colors.green,
          floatingActionButtonIcon: AnimatedIcons.menu_arrow,
          showFloatingActionButton: true,
          defaultView: "slides",
          duration: Duration(
            milliseconds: 800,
          ),
        ),
      ),
    );
  }

  Container buildPage(Color color, String text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
