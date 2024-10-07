import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'details_page.dart';

class Lifecycle extends StatefulWidget {
  const Lifecycle({super.key});


  @override
  State<Lifecycle> createState() => _LifecycleState();
}

class _LifecycleState extends State<Lifecycle> with WidgetsBindingObserver {
  var logger = Logger();

  _openDetalisPage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const DetailsPage(), ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch(state){
      case AppLifecycleState.resumed:
        logger.i("AppLifecycleState.resumed");
      break;
      case AppLifecycleState.inactive:
        logger.i("AppLifecycleState.inactive");
        break;
      case AppLifecycleState.paused:
        logger.i("AppLifecycleState.paused");
        break;
      case AppLifecycleState.detached:
        logger.i("AppLifecycleState.detached");
        break;
      case AppLifecycleState.hidden:
        logger.i("AAppLifecycleState.hidden");
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Lifecycle"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child:
        MaterialButton(
          color: Colors.blue,
          onPressed: (){
            _openDetalisPage();
          },
          child: const Text("Open details"),
        )
      ),
    );
  }

}
