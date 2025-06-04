import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

class CoursePlacement extends StatefulWidget {
  final String slug;
  const CoursePlacement({super.key, required this.slug});

  @override
  Placement createState() => Placement(slug: slug);
}

Future fetchItems(slug) async {
  final response = await http.get(Uri.parse(
      'https://suapp.sangamuniversity.ac.in/api/get_placement.php?slug=$slug'));

  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load items');
  }
}

class Placement extends State<CoursePlacement> {
  late Future futureItems;
  Placement({required this.slug});
  final String slug;

  @override
  void initState() {
    super.initState();
    futureItems = fetchItems(slug);
  }

  final Uri _url = Uri.parse('mailto:info@sangamuniversity.ac.in');

  GoToMail() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

// for (var item in jsonDecode(snapshot.data["courses"]))
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          toolbarHeight: 60,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          title: const Text(
            'Placement',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
        ),
        body: SingleChildScrollView(
            child: FutureBuilder(
          future: futureItems,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Wrap(
                runSpacing: -3,
                children: [
                  for (var item in snapshot.data)
                    (Container(
                      width: double.infinity,
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 236, 241, 255),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.network(
                            item["imageURL"],
                            width: 90,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                              width:
                                  20), // Add a spacing between image and text
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(item["name"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              Text(item["course"],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15)),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 210,
                                child: Text("company: ${item['company']}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                              )
                            ],
                          ),
                        ],
                      ),
                    ))
                ],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return SizedBox(
              height: MediaQuery.of(context).size.height / 1.3,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        )));
  }
}
