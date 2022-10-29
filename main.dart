import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/Modules/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        appBarTheme:  const AppBarTheme(
          backgroundColor: Colors.teal,
          centerTitle:true,
          elevation: 10.0,
            systemOverlayStyle: SystemUiOverlayStyle(
                systemNavigationBarColor: Colors.white,
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark
            ),
        ),
       // buttonTheme: ButtonTheme(,),

      ),
      home:     const MyHomePage(entered_number: ''),
    );
  }
}

