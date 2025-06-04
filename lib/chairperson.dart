import 'package:flutter/material.dart';
import 'package:sangam_app/drawer.dart';

class Chairperson extends StatefulWidget {
  @override
  State<Chairperson> createState() => _ChairpersonState();
}

class _ChairpersonState extends State<Chairperson> {
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
          'Chairperson\'s Message',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Image.asset(
              'assets/images/board_members/RP-Soni.jpg',
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "R.P. Soni",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Chairperson, Sangam University",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                
                // Adjust color as needed
              ),
              child: Text(
                "Sangam is an innovative, forward-thinking University with high standards of teaching, research and support. It is located in Bhilwara (Rajasthan) which is one of the fast developing cities of India. We have committed ourselves to provide a strong infrastructure base, ranging from state-of-the-art classrooms, laboratories, comfortable boarding and lodging arrangements, support services, learning resources, etc. Most importantly, we have committed ourselves to getting the best of faculty for every discipline. We understand the education scenario and practical needs of the students staying away from their homes and their family. To help in providing a comfortable, disciplined and soothing environment, we have facilitated canteens, ATM, general store, doctor, medical and transport facilities to assist students in traveling back and forth from the centre of the city. Our objective is to provide a home away from home and help students pursue their career goals. Enroll in any of our courses, making a positive difference is our promise. I look forward to welcoming you into the Sangam family.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
