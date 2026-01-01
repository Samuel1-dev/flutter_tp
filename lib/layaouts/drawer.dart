import 'package:flutter/material.dart';

class GlobalDrawer extends StatefulWidget {
  const GlobalDrawer({super.key});

  @override
  State<GlobalDrawer> createState() => _GlobalDrawerState();
}

class _GlobalDrawerState extends State<GlobalDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF0A0E21),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFA58EFF)), 
            child: Text("Menu", style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title: const Text("Accueil", style: TextStyle(color: Colors.white)),
            onTap: () => Navigator.pushNamed(context, '/'), 
          ),
          ListTile(
            leading: const Icon(Icons.open_in_new, color: Colors.white),
            title: const Text("Total project", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pushNamed(context, '/total_project');
            },
          ),
          ListTile(
            leading: const Icon(Icons.open_in_new, color: Colors.white),
            title: const Text("Project hour", style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pushNamed(context, '/project_hour');
            },
          ),
        ],
      ),
    );
  }
}