import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen_and_widget_animation_example/Screen/HomeScreen.dart';
import 'package:screen_and_widget_animation_example/provider/themeprovider.dart';

void main() {
  runApp(
    MultiProvider( // create the provider
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        )
      ],child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      home:HomeScreen(),
    );
  }
}