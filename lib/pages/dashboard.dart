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
            
          )
        ],
      ),
      
    );
  }
}