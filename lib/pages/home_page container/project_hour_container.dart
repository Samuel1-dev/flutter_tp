import 'package:flutter/material.dart';

class ProjectHourContainer extends StatelessWidget {
  const ProjectHourContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsetsGeometry.symmetric(horizontal: 15.0),   
       child: Container(
       padding: EdgeInsets.all(10),
       height: 320,
       width: 100,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 21, 19, 51),                
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         mainAxisSize: MainAxisSize.min,
         children: [
           Text("Project hours",
             style: TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
                 color: const Color.fromARGB(255, 249, 212, 212)
               ),
             ),
             SizedBox(height: 8,),
             
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text(
             "90:35 h",
             style: TextStyle(
               fontSize: 48,
               fontWeight: FontWeight.bold,
               color: Colors.deepPurpleAccent,
             ),
           ),
           Spacer(),
           Column(
               children: [
                 Text(
                   "Total project hours",
                   style: TextStyle(color: Colors.grey[600], fontSize: 14),
                 ),
                  SizedBox(height:  4),
                 
                 Row(
                 children: [
                   Icon(Icons.arrow_outward, color: Colors.green, size: 16, ),
                   SizedBox(width: 4),
                   Text(
                     "+10h then last week",
                     style: TextStyle(
                       color: Colors.green,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                 ],
               ),
               ]
             ),
             ]
           ),
           SizedBox(height: 10,),
           Divider(height: 5,),
           SizedBox(height: 10,),
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(bottom: 8),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Projects", style: TextStyle(color: Colors.grey[500], fontSize: 12)),
                     Text("Time spend", style: TextStyle(color: Colors.grey[500], fontSize: 12)),
                   ],
                 ),
               ),
               
               InkWell(onTap:(){} , child: _buildItem("App redesign", "18 h", "16.5%", 0.8)),
               InkWell(onTap: (){},child: _buildItem("Website design", "35 h", "33%", 0.9)),
               InkWell(onTap: () => Navigator.pushNamed(context, '/project_hour'),child: _buildItem("Orbix rebranding", "17 h", "16.5%", 0.55)),
               InkWell(onTap: (){},child: _buildItem("Website development", "20 h", "24%", 0.7)),
             ],
           ),
    
    
         ],    
       ),
     ),
                );
  }
}

Widget _buildItem(String title, String hours, String percent, double progress) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
         
          Icon(Icons.open_in_new, color:  const Color.fromARGB(255, 249, 212, 212), size: 18),
          SizedBox(width: 12),
          
        
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: TextStyle(color:  const Color.fromARGB(255, 249, 212, 212), fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          
          
          Expanded(
            flex: 2,
            child: Text(
              hours,
              style: TextStyle(color:  const Color.fromARGB(255, 249, 212, 212), fontSize: 14),
            ),
          ),
          
          
          Expanded(
            flex: 2,
            child: Text(
              percent,
              style: TextStyle(color:  const Color.fromARGB(255, 249, 212, 212), fontSize: 14),
            ),
          ),
          
          
          Expanded(
            flex: 3,
            child: Container(
              height: 4,
              decoration: BoxDecoration(
                color:  const Color.fromARGB(255, 21, 19, 51),
                borderRadius: BorderRadius.circular(2),
              ),
              child: FractionallySizedBox(
                alignment: Alignment.centerLeft,
                widthFactor: progress,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF6366F1), 
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
