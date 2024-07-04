import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/pages/HomePage.dart';
import 'package:mobile/pages/CategoryPage.dart';
import 'package:mobile/pages/MoviePage.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp>{

  @override
  void initState(){
    // to hide status bar and below button
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
super.initState();
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F111D),
      ),
routes: {
        "/":(context) =>HomePage(),
  "categoryPage": (context) => CategoryPage(),
  "moviePage": (context) => MoviePage(),
},
    );
  }
}











