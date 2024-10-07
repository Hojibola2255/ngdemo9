import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var logger = Logger();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //logger.i("initState");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
   // logger.i("didChangeDependencies");
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Widget Lifecycle"),
      ),
      body: Center(
        child: Text("Details Page"),
      ),
    );
  }

  @override
  void didUpdateWidget(covariant DetailsPage oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    //logger.i("didUpdateWidget");
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    //logger.i("setState");
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    //logger.e("deactivate");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
   // logger.e("dispose");
  }

}
