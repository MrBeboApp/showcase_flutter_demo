import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ShowCaseWidget(
       builder: Builder(
         builder: (context)  => Homebody(),
       ),

     ),
    );
  }

}

class Homebody extends StatefulWidget {
  @override
  _HomebodyState createState() => _HomebodyState();
}

class _HomebodyState extends State<Homebody> {
  GlobalKey _iceKey = GlobalKey();
  GlobalKey _icookKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) =>
        ShowCaseWidget.of(context)
            .startShowCase([_icookKey,_iceKey]));


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Show Case Home"),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Showcase(
              key: _iceKey,
                title: "ايقونة المثلجات",
                description: "سوف تجد هنا افضل اقسام المثجات",
                child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.icecream), label: Text("Ice cream"))),
            Showcase(
              key: _icookKey,
                title: "ايقونة المطبخ",
                description: "سوف تجد هنا افضل اقسام المطبخ العربي",
                textColor: Colors.white,
                showcaseBackgroundColor: Colors.redAccent,
                showArrow: true,
                child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.room_service), label: Text("Cook"))),
          ],
        ),
      ),
    );
  }
}


