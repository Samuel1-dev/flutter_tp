import 'package:flutter/material.dart';
import 'package:tp_flutter/pages/dashboard.dart';
void main (){
  runApp( MaterialApp(
   theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
     
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0D0B21), 
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0D0B21),
          elevation: 0,
        ),
      ),
      
      themeMode: ThemeMode.dark,
   debugShowCheckedModeBanner: false,
   initialRoute: '/',
   routes: {
     '/': (context) => App(),
   },
 
  ));
}

