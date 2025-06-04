import 'package:flutter/material.dart';
import 'package:sangam_app/drawer.dart';

class Cardfaculty extends StatelessWidget {
  final String slug;

  const Cardfaculty({Key? key, required this.slug}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
          backgroundColor: Colors.transparent,
          toolbarHeight: 60,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        title: Text("Notifications",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
      ),
      body: Center(child: Text("Content will be uplaoded soon")),
    );
  }
}
