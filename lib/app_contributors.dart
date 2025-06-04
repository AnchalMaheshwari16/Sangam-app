import 'package:sangam_app/drawer.dart';
import 'package:flutter/material.dart';

class Developers extends StatefulWidget {
  @override
  State<Developers > createState() => _DevelopersState();
}

class _DevelopersState extends State<Developers > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
         centerTitle: true,
          backgroundColor: Colors.transparent,
          toolbarHeight: 60,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        title: const Text(
            'App Contributors',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
      ),
      body: Center(child: Text("Content will be uplaoded soon")),
    );
  }
}
