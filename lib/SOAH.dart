import 'package:flutter/material.dart';
import 'package:sangam_app/faculty.dart';
import 'package:sangam_app/courses.dart';
import 'package:sangam_app/seminar.dart';
import 'package:sangam_app/placement.dart';

class SOAH extends StatelessWidget {
  const SOAH({Key? key}) : super(key: key);

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
          'SOAH',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 10,
            bottom: 20, // Add bottom padding here
          ),
          child: Column(
            children: [
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                    const TextSpan(
                      text: 'The School Of Arts And Humanities (SOAH)',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ' at Sangam University is a platform for diverse technical careers where teaching runs hand in hand with the real world and students are groomed to join the global and national workforce. CS offers the best infrastructural facility to its students to learn the technical knowhow behind the real world applications. A well-knit team of qualified faculty members provides the right environment to utilize and develop the potential of its students.',
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      "Vision",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 5), // Adjusted padding
                decoration: BoxDecoration(
                  // Adjust color as needed
                ),
                child: Text(
                  "At Sangam University, we believe that every student should embrace his passion. We inspire our students to explore new ideas and immerse themselves in a journey of continuous learning and discovery. The School of Arts and Humanities has designed its curriculum In such a way that students will find themselves amidst a plethora of opportunities; from choice based credit system (FCBCS).",
                  style: TextStyle(fontSize: 13),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      "Mission",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 5), // Adjusted padding
                decoration: BoxDecoration(
                  // Adjust color as needed
                ),
                child: Text(
                  "1. The Department of Arts and Humanities is in consonance with the mission statement of University and is committed to promoting an intellectual climate, which assists in innovative ideation. The department inculcates among its students a critical reading of the self, the society and is imagined with the aim of molding them into responsible and socially sensitive citizens. It also facilitates their holistic development by building emotional, academic, social, professional and global competencies. We have a dedicated team of professionals, on whom the department continues to strive, explore and achieve.\n 2. CS offers Ph,D, UG, PG, Diploma and certificate programmes, having project-based approach and a design-driven curriculum in different engineering disciplines such as Computer Science, Civil, Electrical, Mechanical and Mining Engineering. These programme sare designed for students with an inclination for complex problem solving, design, innovation, and a passion for learning.",
                  style: TextStyle(fontSize: 13),
                  textAlign: TextAlign.justify,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Center(
                    child: Text(
                      "Dean Message",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
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
                            'assets/images/deans/ProfKKSharma.jpg',
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Prof. K. K. Sharma",
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Professor & Dean",
                            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        // Adjust color as needed
                      ),
                      
                      child: Text(
                        "Welcome and thank you for visiting the School of Arts And Humanities (SOAH), at Sangam University.\n\n At Sangam University, we believe that every student should embrace his passion. We inspire our students to explore new ideas and immerse themselves in a journey of continuous learning and discovery. The School of Arts and Humanities has designed its curriculum In such a way that students will find themselves amidst a plethora of opportunities; from choice based credit system (FCBCS).\n\n The Department of Arts and Humanities is in consonance with the mission statement of University and is committed to promoting an intellectual climate, which assists in innovative ideation. The department inculcates among its students a critical reading of the self, the society and is imagined with the aim of molding them into responsible and socially sensitive citizens. It also facilitates their holistic development by building emotional, academic, social, professional and global competencies. We have a dedicated team of professionals, on whom the department continues to strive, explore and achieve.",
                        style: const TextStyle(fontSize: 13),
                        textAlign: TextAlign.justify,
                      ),
                      
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const faculty(slug: "faculty"),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 236, 241, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(
                      child: Text(
                        "FACULTY",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 88, 120, 209),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Courses(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 236, 241, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(
                      child: Text(
                        "COURSES",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 88, 120, 209),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const seminar(slug: "seminar"),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 236, 241, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(
                      child: Text(
                        "SEMINARS & WORKSHOPS",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 88, 120, 209),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Placement(slug: "placement"),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 236, 241, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(
                      child: Text(
                        "PLACEMENT",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 88, 120, 209),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
