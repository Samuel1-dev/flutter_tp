import 'package:flutter/material.dart';

class TotalProjectContainer extends StatelessWidget {
  const TotalProjectContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/total_project');
              },
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 15.0, vertical: 10.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  height: 300,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 21, 19, 51)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Total project",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          
                        ),
                      ),
                      SizedBox(height: 20),
                    Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "14",
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                    Text(
                      "Total project",
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.arrow_outward, color: Colors.green, size: 16),
                        SizedBox(width: 4),
                        Text(
                          "+1 New",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
               
                
              ],
            ),

                    ],
                  ),
                ),
              ),
          );
        
  }
}