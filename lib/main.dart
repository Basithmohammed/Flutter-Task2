import 'package:flutter/material.dart';
import 'package:flutter_project_2/home.dart';
import 'package:flutter_project_2/page3.dart';
import 'package:flutter_project_2/page4.dart';


main(){
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
        ),
        useMaterial3: true,
      ),
      home :Page3(),
    );
  }
}