import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sangam_app/drawer.dart';



class seminar extends StatelessWidget {
  final String slug;

  const seminar({Key? key, required this.slug}) : super(key: key);

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
        title: Text("Seminars & Workshops",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
      ),
      body: Center(child: Text("Content will be uplaoded soon")),
    );
  }
}
