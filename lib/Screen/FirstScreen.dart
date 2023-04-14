import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:page_transition/page_transition.dart';
import 'package:screen_and_widget_animation_example/Screen/SecondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  TextEditingController _name = TextEditingController();
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();

  }
  @override
  void activate() {
    // TODO: implement activate
    super.activate();
    _name.dispose();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
     _name.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Call");
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
        ),
        body: Center(child: ElevatedButton(
          onPressed: () {
            
          Navigator.push(context, PageTransition(type: PageTransitionType.topToBottom,duration: Duration(seconds: 1), child: SecondScreen()));
        },
        child: Text("Go to Second"),)),
    );
  }
}