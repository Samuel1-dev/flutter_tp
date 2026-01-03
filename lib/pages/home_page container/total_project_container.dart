import 'package:flutter/material.dart';
import 'package:tp_flutter/pages/home_page container/diagramme.dart';
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
                          color: const Color.fromARGB(255, 249, 212, 212)
                          
                        ),
                      ),
                      SizedBox(height: 20),
                Row(
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
                    SizedBox(width:  8),
                    
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            "Total project",
                            style: TextStyle(color: Colors.grey[600], fontSize: 14),
                          ),
                           SizedBox(height:  4),
                          
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
                        ]
                      ),
                    ),
                    Spacer(),
                   Diagramme(),
                  ],
                   ),
                   SizedBox(height: 10,),
                  _buildLegendSection()
                  ],
                  ),
                ),
              ),
          );
        
  }
}

Widget _buildLegendSection() {
  return Column(
    children: [
      _buildLegendItem("To do", 3, Color(0xFF2D2D3A)),       
      _buildLegendItem("In progress", 5, Color(0xFF9147FF)), 
      _buildLegendItem("In review", 1, Color(0xFFF1A55E)),   
      _buildLegendItem("Complete", 5, Color(0xFF42BE65)),    
    ],
  );
}

Widget _buildLegendItem(String label, int count, Color color) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0), 
    child: Row(
      children: [
        Container(
          width: 35,
          height: 4,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 16), 
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            color: const Color.fromARGB(255, 249, 212, 212), 
            fontWeight: FontWeight.w500,
          ),
        ),
        Spacer(),
        Text(
          count.toString(),
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}