import 'package:flutter/material.dart';
import 'package:sangam_app/faculty.dart';
import 'package:sangam_app/courses.dart';
import 'package:sangam_app/seminar.dart';
import 'package:sangam_app/placement.dart';

class SOP extends StatelessWidget {
  const SOP({Key? key}) : super(key: key);

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
          'SOP',
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
                      text: 'The School of Pharmacy (SOP)',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ' is a department or unit within a university or other institution of higher education that is dedicated to providing education and training in the field of pharmacy. It typically offers a range of degree programs at the undergraduate, graduate, and postgraduate levels in areas such as pharmaceutical sciences, pharmacology, and pharmacy practice. The curriculum of these programs often includes a mix of coursework in the biological and chemical sciences, as well as practical skills and experience through internships, clinical rotations, and research projects. The goal of the SOP is to prepare students for career as pharmacists who are responsible for dispensing and managing medications, as well as to providing patient care and education.',
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
                  "School of Pharmacy at Sangam University is approved by the Pharmacy Council of India (PCI). We started this program in 2019, offering state of the art infrastructure and well reputed faculty, while following all norms of regulatory body. The institute offers a degree course and a diploma course in pharmacy. A Bachelor of Pharmacy (abbreviated as B. Pharma) is an undergraduate academic degree and it is a four-yearprogram. Whereas Diploma in Pharmacy (abbreviated as D. Pharma) is a two-year program. The diploma is the basic prerequisite for registration to practice as a pharmacist in India.",
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
                  "Students those are interested in the medical field (except to become a doctor) can choose this course after the completion of class 12th (PCM/B). After the completion of this degree, students can practice as a Pharmacist. Pharmacists can work in a range of industries related to the prescription, manufacture & provision of medicines.",
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
                            'assets/images/deans/Bindu-yadav.jpg',
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Dr. Bindu yadav",
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
                        "School of Pharmacy at Sangam University is approved by the Pharmacy Council of India (PCI). We started this program in 2019, offering state of the art infrastructure and well reputed faculty, while following all norms of regulatory body. The institute offers a degree course and a diploma course in pharmacy. A Bachelor of Pharmacy (abbreviated as B. Pharma) is an undergraduate academic degree and it is a four-yearprogram. Whereas Diploma in Pharmacy (abbreviated as D. Pharma) is a two-year program. The diploma is the basic prerequisite for registration to practice as a pharmacist in India.\n\n Students those are interested in the medical field (except to become a doctor) can choose this course after the completion of class 12th (PCM/B). After the completion of this degree, students can practice as a Pharmacist. Pharmacists can work in a range of industries related to the prescription, manufacture & provision of medicines.",
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
