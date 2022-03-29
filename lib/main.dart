import 'package:flutter/material.dart';
import 'package:responsive_dedign/responsive_Screen/mobile-Screen.dart';
import 'package:responsive_dedign/responsive_Screen/tablate-Screen.dart';
import 'package:responsive_dedign/responsive_Screen/web-Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: LayoutBuilder(builder: (context,constraints){

        if(constraints.maxWidth<600){
          return MobaileScreen();}

          else if (constraints.maxWidth>600 &&constraints.maxWidth<900 ){

          return Tablate();
        }
          else if(constraints.maxWidth>900){

          return WebScreen();
        }
        //   else if(constraints.maxWidth<1200){
        //
        // //   return Container(
        // //     color: Colors.deepPurpleAccent,
        // //     height: 200,
        // //     width: 200,
        // //   );
        // // }

        else{
          return Container(
            height: 300,
            width: 300,
          );
        }
      },
      ),
    );
  }
}

