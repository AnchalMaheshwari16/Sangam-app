import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sangam_app/drawer.dart';
import 'package:sangam_app/NAAC.dart';
import 'package:sangam_app/NIRF.dart';
import 'package:sangam_app/alumni.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  late Future futureItems;

  @override
  void initState() {
    super.initState();
    futureItems = fetchItems();
  }

  Future fetchItems() async {
    final response = await http.get(Uri.parse('https://www.sangamuniversity.ac.in/sunoticeuniapi/'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load items');
    }
  }

  Future<void> goToURL(String link) async {
    if (!await launchUrl(Uri.parse(link), mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $link';
    }
  }

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
        title: Text(
          "More",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  NAAC(),
                      ),
                    ),
                    child: Container(
                      width: 160,
                      height: 55,
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 236, 241, 255),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                        child: Text(
                          "NAAC IQAC",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NIRF(),
                      ),
                    ),
                    child: Container(
                      width: 160,
                      height: 55,
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 236, 241, 255),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                        child: Text(
                          "NIRF",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Alumni(),
                ),
              ),
              child: Container(
                width: double.infinity,
                height: 55,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 236, 241, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Center(
                  child: Text(
                    "Alumni",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => goToURL("https://www.sangamuniversity.ac.in/"),
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 236, 241, 255),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const SizedBox(
                            width: double.infinity,
                            child: Icon(Icons.web, size: 40),
                          ),
                        ),
                        const Text("Website", style: TextStyle(fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => goToURL("https://www.facebook.com/sangam.univ/"),
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 236, 241, 255),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const SizedBox(
                            width: double.infinity,
                            child: Icon(Icons.facebook, size: 40, color: Colors.blue),
                          ),
                        ),
                        const Text("Facebook", style: TextStyle(fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => goToURL("https://www.linkedin.com/school/sangam-university-bhilwara/"),
                    child: Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                              padding: const EdgeInsets.all(17),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 236, 241, 255),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: Image.asset("assets/images/linkedin.png"),
                              ),
                            ),
                            const Text(
                              "Linkedin",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () => goToURL(
                            "https://www.instagram.com/sangamuniversity/"),
                        child: Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              padding: const EdgeInsets.all(17),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 236, 241, 255),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                child: Image.asset("assets/images/insta.png"),
                              ),
                            ),
                            const Text(
                              "Instagram",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ])),
            const SizedBox(
              height: 20,
            ),
            ],
        )));
  }
}

