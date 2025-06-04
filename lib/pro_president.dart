import 'package:sangam_app/drawer.dart';
import 'package:flutter/material.dart';

class Pro_president extends StatefulWidget {
  @override
  State<Pro_president> createState() => _Pro_presidentState();
}

class _Pro_presidentState extends State<Pro_president> {
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
            'Pro President Message',
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
                    "assets/images/board_members/ManasRanjan.jpg",
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Prof. (Dr.) Manas Ranjan Panigrahi",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Pro President",
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
                "Sangam University is a confluence where Aspiration meets Opportunity. The University is on the path of academic excellence and holistic development of students through a strong research-based interface with academic bodies, industry, and government. Sangam University aims to address the challenges of vertical mobility, social acceptability, long-term sustainability, industry expectations, and quality training and research by offering Certificate, Diploma, and Degree Programs in line with the industry requirements, to varied sections of our society. Our programs have been meticulously designed to meet the evolving needs of the modern workforce, equipping our students with the skills and knowledge required to thrive in an ever-changing global landscape.\n\n One of our core values is accessibility, and we take immense pride in offering flexible learning options to cater to the diverse needs of our students. Furthermore, we understand the importance of fostering a supportive and inclusive community. Our faculty members are renowned experts in their respective fields, and they are passionate about guiding and mentoring students on their educational journey. Our staff is dedicated to providing unparalleled support, ensuring that the students have all the resources and assistance they need to excel academically and personally. In addition to this, in the spirit of continuous improvement, we are constantly refining our curriculum and expanding our offerings to reflect emerging trends and emerging fields of study.\n\n We look forward to achieving our vision through dedicated faculty-student synergy and establishing Sangam University as a 'Centre of Learning and Excellence'. In alignment with the New Education Policy 2020 (NEP-2020), Sangam University aspires to cater to multi-disciplinary programs with a focus on integrating skills, health, wellness, and ethical grounding with day-to-day academics.\n\n In the new era of 'Sushikshit - Sashakth - Saksham Bharat' Sangam University has initiated its efforts to develop Vision 2035.",
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
