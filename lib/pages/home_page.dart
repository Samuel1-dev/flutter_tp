import 'package:flutter/material.dart';
import 'package:tp_flutter/layaouts/app_bar.dart';
import 'package:tp_flutter/pages/home_page container/project_hour_container.dart';
import 'package:tp_flutter/pages/home_page container/total_project_container.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar(),
      
      body: ListView(
        scrollDirection: Axis.vertical,

        children: [
          TotalProjectContainer(),         
          ProjectHourContainer(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Recommended team', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextButton(onPressed: () {}, child: const Text('View all', style: TextStyle(color: Color(0xFFA58EFF)))),
                ],
              ),
            ),

           Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 15.0,),
            child: Container(
              height: 320,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
               color: const Color.fromARGB(255, 21, 19, 51),
               
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}