import 'package:flutter/material.dart';
import 'package:sangam_app/drawer.dart';

class President extends StatefulWidget {
  @override
  State<President> createState() => _PresidentState();
}

class _PresidentState extends State<President> {
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
          'President Message',
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
                    "assets/images/board_members/karunesh.jpg",
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Prof. Karunesh Saxena",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "President / Vice Chancellor",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(15),     
              child: Text(
                "Sangam University, is a confluence where Aspiration meets Opportunity. The University is on the path of academic excellence and holistic development of students through strong research-based interface with academic bodies, industry and government. We look forward to achieve our vision through dedicated faculty-student synergy and establish our University as a 'Centre of Learning and Excellence'. In alignment to the New Education Policy Sangam university aspires to cater multidisciplinary programs with focus on integrating skills, health and wellness, and ethical grounding with day to day academics. In the new era of 'Sushikshit - Sashakth - Saksham Bharat' Sangam University has initiated its efforts to develop vision 2035.The University will RISE by investing the resources on:\nR esearch,\nI nnovation,\nS killing and\nE ntreprenuership.",
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
