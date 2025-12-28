import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class GlobalAppbar extends StatefulWidget implements PreferredSizeWidget {
  const GlobalAppbar({super.key});

  @override
  State<GlobalAppbar> createState() => _GlobalAppbarState();
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 60);
}

class _GlobalAppbarState extends State<GlobalAppbar> {
  
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: const Color.fromARGB(255, 16, 14, 48),
    elevation: 1,
  leading: Icon(Icons.menu),
  title: Row(
    children: [
      Icon(Icons.rocket_launch, color: Colors.purpleAccent), 
      SizedBox(width: 8),
      Text("Fobework", style: TextStyle(fontWeight: FontWeight.bold)),
      Spacer(),
      IconButton(icon: const Icon(Icons.history, size: 20), onPressed: () {}),
      IconButton(icon: const Icon(Icons.notifications_none, size: 20), onPressed: () {}),
      Text("Pro", style: TextStyle(fontSize: 12)),
      CupertinoSwitch(value: false, onChanged: (v) {}),
    ],
  ),
  
  bottom: PreferredSize(
    preferredSize: const Size.fromHeight(60), 
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          
          // ignore: deprecated_member_use
          color: Colors.white.withOpacity(0.05), 
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white12), 
        ),
        child: const TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white38),
            prefixIcon: Icon(Icons.search, color: Colors.white38, size: 20),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 12, top: 12),
              child: Text("⌘ /", style: TextStyle(color: Colors.white24, fontSize: 14)),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 12),
          ),
        ),
      ),
    ),
  ),
);
    
  }

  
}

