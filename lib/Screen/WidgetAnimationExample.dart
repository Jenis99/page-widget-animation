import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WidgetAnimationExample extends StatefulWidget {

  @override
  State<WidgetAnimationExample> createState() => _WidgetAnimationExampleState();
}

class _WidgetAnimationExampleState extends State<WidgetAnimationExample> with TickerProviderStateMixin {


  
  AnimationController? animation;
  Animation<double>? _fadeInFadeOut;
  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animation = AnimationController(vsync: this, duration: Duration(seconds: 1),);
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 0.5).animate(animation!);
    animation!.addStatusListener((status){
      if(status == AnimationStatus.completed){
        animation!.reverse();
      }
      else if(status == AnimationStatus.dismissed){
        animation!.forward();
      }
    });
    animation!.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Widget Animation") ,),
        body: Center(
          child: FadeTransition(
            opacity: _fadeInFadeOut!,
            child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.blue,
          ),
          ),


          // This is for Transition Widgte
          /*
          Navigator.push(
              context,
              PageRouteBuilder(
                  transitionDuration: const Duration(seconds: 1),
                  transitionsBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secAnimation,
                      Widget child) {
                    animation = CurvedAnimation(
                        parent: animation, curve: Curves.elasticOut);
                    return ScaleTransition(
                        scale: animation,
                        alignment: Alignment.center,
                        child: child);
                  },
                  pageBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secAnimation) {
                    return SecondScreen();
                  }));
          */
        ),
    );
  }
}