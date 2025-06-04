import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sangam_app/course_placement.dart';


class Placement extends StatefulWidget {
  final String slug;
  const Placement({Key? key, required this.slug}) : super(key: key);

  @override
  _PlacementState createState() => _PlacementState();
}

class _PlacementState extends State<Placement> {
  late Future<Map<String, dynamic>> futurePage;

  @override
  void initState() {
    super.initState();
    futurePage = fetchPage(widget.slug);
  }

  Future<Map<String, dynamic>> fetchPage(String slug) async {
    final response = await http.get(
        Uri.parse('https://suapp.sangamuniversity.ac.in/api/get_page.php?slug=$slug'));
    final buttons = await http.get(
        Uri.parse('https://suapp.sangamuniversity.ac.in/api/placements.php'));

    if (response.statusCode == 200) {
      return {
        "main": jsonDecode(response.body),
        "buttons": jsonDecode(buttons.body),
      };
    } else {
      throw Exception('Failed to load page');
    }
  }

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
          widget.slug,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: futurePage,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Text(
                    "The aim of the Training & Placement Cell at Sangam University is to guide and prepare students to choose the right career through a process of knowledge sharing, skill development, aptitude, and attitude training during their program of study. Training & Placement Cell conducts various activities focused on technology trends, life skills, aptitude, career counseling, competition exam guidance and preparation, Placement readiness program with help of an internal team of experts along with a number of industrial guests throughout the year. Training & Placement Cell is also focused toward skill-oriented short-term training programs and entrepreneurship skill training for students.",
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Column(
                    children: [
                      for (var items in snapshot.data!["buttons"])
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CoursePlacement(slug: items["slug"]),
                              ),
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 236, 241, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            child: Center(
                              child: Text(
                                items["name"],
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 88, 120, 209)),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          }
          return SizedBox.shrink(); // Return an empty widget as fallback
        },
      ),
    );
  }
}
