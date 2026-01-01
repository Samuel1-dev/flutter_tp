import 'package:flutter/material.dart';
import 'package:tp_flutter/layaouts/app_bar.dart';
import 'package:tp_flutter/layaouts/drawer.dart';

class TotalProjectPage extends StatefulWidget {
  const TotalProjectPage({super.key});

  @override
  State<TotalProjectPage> createState() => _TotalProjectPageState();
}

class _TotalProjectPageState extends State<TotalProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar(),
      drawer: GlobalDrawer(),
      
    );
  }
}