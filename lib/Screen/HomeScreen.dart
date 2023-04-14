import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:screen_and_widget_animation_example/provider/themeprovider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkmode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Customization"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){

        },
        child: Icon(Icons.add), ),
      body: Column(
        children: [
          Text("This is Home Screen",style: Theme.of(context).textTheme.headlineMedium,),
          IconButton(
             onPressed: () {
               final themeProvider =
                        Provider.of<ThemeProvider>(context, listen: false); // get the provider, listen false is necessary cause is in a function

               setState(() {
                  isDarkmode = !isDarkmode;
               }); // change the variable

               isDarkmode // call the functions
                  ? themeProvider.setDarkmode()
                  : themeProvider.setLightMode();
             },
             icon: const Icon(Icons.dark_mode),
          ),
      ]),
    );
  }
}