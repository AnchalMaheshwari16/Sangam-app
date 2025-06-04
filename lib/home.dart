import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sangam_app/notifications.dart';
import 'package:sangam_app/drawer.dart';
import 'package:sangam_app/about_sangam.dart';
import 'package:sangam_app/student.dart';
import 'package:sangam_app/gallery.dart';
import 'package:sangam_app/more.dart';
import 'package:sangam_app/applyForm.dart';
import 'package:sangam_app/schools.dart';
import 'package:sangam_app/contactus.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
Future<List<dynamic>> fetchItems() async {
  try {
    final response = await http.get(Uri.parse('https://www.sangamuniversity.ac.in/suactionapi/'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Failed to load items');
    }
  } catch (e) {
    throw Exception('Failed to fetch items: $e');
  }
}


class _HomeScreenState extends State<HomeScreen> {
  late Future futureItems;
 static const temp ="asdf";
  @override
  void initState() {
    super.initState();
    futureItems = fetchItems();
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: NavDrawer(),
      key: _scaffoldKey,
      appBar: AppBar(
        actions: [
          Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(
                    Icons.notifications_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Cardfaculty(slug: "slug")),
                    );
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: SizedBox(
                  width: 32, // Adjust the width as needed
                  height: 32,  // Adjust the height as needed
                  child: Image.asset("assets/images/menu1.png", color: Colors.black),
                   ),
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                    
                  },
                  
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                
                );
              },
            ),
          ],
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset('assets/images/logo_cut.png'),
        ),
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title:Row(
        children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "SANGAM UNIVERSITY",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        ],
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
              ),
              items: [
                "assets/images/conference_banner.jpg",
                "assets/images/ba1.jpg",
                "assets/images/b2.jpg"
              ].map((String item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                        child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    item,
                    fit: BoxFit.cover, // Use BoxFit.cover to ensure the image fills the container without distorting its aspect ratio
                  ),
                        ),
                    );
                  },
                );
              }).toList(),
            ),
            Container(
  width: double.infinity,
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  About_sangam(),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            // height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 236, 241, 255),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 55,
                  child: Image.asset("assets/images/building.png"),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  "About",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 88, 120, 209),
                  ),
                ),
                const Text(
                  "Sangam",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        flex: 1,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StudentPage(),
              ),
            );
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            // width:160,
            // height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 236, 241, 255),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 60,
                  child: Image.asset("assets/images/student-cap.png"),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Student",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 88, 120, 209),
                  ),
                ),
                const Text(
                  "Corner",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  ),
),

Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StackedCardDemo(),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 241, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset("assets/images/image.png"),
            ),
            const SizedBox(height: 8),
            const Text(
              "Gallery",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Schools(),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 241, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset("assets/images/schools.png"),
            ),
            const SizedBox(height: 8),
            const Text(
              "Schools",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  ApplyForm(),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 241, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset("assets/images/apply.png"),
            ),
            const SizedBox(height: 8),
            const Text(
              "Apply",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
      GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  MorePage(),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 236, 241, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.more_horiz_outlined,
                size: 35,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "More",
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      )
      
    ],
  ),
),
const SizedBox(height: 35),





 Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                    flex: 1,
                    child: 
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  MyCustomForm(),
                  ),
                ),
                
                child: Container(
                    width: 170,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      // color: Color.fromARGB(255, 236, 241, 255),
                      border: Border.all(),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 88, 120, 209)),
                      ),
                    )),
              ),),
              SizedBox(width: 10,),
              Expanded(
                    flex: 1,
                    child: 
              GestureDetector(
                onTap: () async {
                  if (!await launchUrl(
                      Uri.parse(
                          'https://api.whatsapp.com/send?phone=918306100191'),
                      mode: LaunchMode.externalApplication)) {
                    throw 'Could not launch ${Uri.parse('https://api.whatsapp.com/send?phone=918306100191')}';
                  }
                },
                child: Container(
                    width: 170,
                    height: 50,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 232, 255, 231),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(
                      child: Text(
                        "WhatsApp",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 92, 209, 88)),
                            
                      ),
                      
                    )),
              ),
              ),
          ],
        ),
      ),
      
       ],
        ),
      ),
    );
  }
}