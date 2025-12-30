import 'package:flutter/material.dart';

class ProjectHourContainer extends StatelessWidget {
  const ProjectHourContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: () => Navigator.pushNamed(context, '/project_hour'),
             child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 15.0),
              child: Container(
                height: 320,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                 color: const Color.fromARGB(255, 21, 19, 51),
                 
                ),
              ),
                       ),
           );
  }
}