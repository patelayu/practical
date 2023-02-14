import 'package:flutter/material.dart';
import 'package:untitled33/screen/science_page.dart';
import '../Api_helper/api_helper.dart';
import '../Api_model/api_model.dart';
import 'package:permission_handler/permission_handler.dart';

import '../sport_page.dart';
import 'busines_page.dart';
import 'enterrainment_page.dart';
import 'helth_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  requestPermission() async {
    await Permission.location.request();
  }

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(backgroundColor: Colors.black,
            title: Text("Breking news...."),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(text: "helth"),
                Tab(text: "entertainment"),
                Tab(text: "Businesspage"),
                Tab(text: "sciencepage"),
                Tab(text: "sportpage"),

              ],
            ),
          ),
          body: TabBarView(
            children: [
              HealthPage(),
               EntertainmentPage(),
              BusinessPage(),
              SciencePage(),
              SportsPage(),

            ],
          ),

        ),
      ),

    );

  }
}