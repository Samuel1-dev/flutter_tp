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
            child: Text("Menu", style: TextStyle( fontSize: 24)),
          ),
          ListTile(
            leading: const Icon(Icons.home, ),
            title: const Text("Accueil"),
            onTap: () => Navigator.pushNamed(context, '/'), 
          ),
          ListTile(
            leading: const Icon(Icons.open_in_new),
            title: const Text("Total project"),
            onTap: () {
              Navigator.pushNamed(context, '/total_project');
            },
          ),
          ListTile(
            leading: const Icon(Icons.open_in_new),
            title: const Text("Project hour"),
            onTap: () {
              Navigator.pushNamed(context, '/project_hour');
            },
          ),
        ],
      ),
    );
  }
}