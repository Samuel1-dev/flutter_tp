import 'package:flutter/material.dart';
import 'package:tp_flutter/layaouts/app_bar.dart';


class ProjectHourPage extends StatefulWidget {
  const ProjectHourPage({super.key});

  @override
  State<ProjectHourPage> createState() => _ProjectHourPageState();
}

class _ProjectHourPageState extends State<ProjectHourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar(),
    );
  }
}