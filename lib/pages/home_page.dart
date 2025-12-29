import 'package:flutter/material.dart';
import 'package:tp_flutter/layaouts/app_bar.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar(),
      
      body: ListView(
        scrollDirection: Axis.vertical,

        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 200,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
             color: const Color.fromARGB(255, 21, 19, 51),
             
            ),
          )
        ],
      ),
      
    );
  }
}