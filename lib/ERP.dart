import 'package:flutter/material.dart';

class WebViewContainer extends StatefulWidget {
  WebViewContainer({Key? key}) : super(key: key);

  @override
  _WebViewContainerState createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  String title = "ERP";
  String url = "https://suerp.sangamuniversity.ac.in/";
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: 60,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: Center(child: Text("Content will be uplaoded soon")),
    );
  }
}
