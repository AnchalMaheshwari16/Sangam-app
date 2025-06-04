import 'package:flutter/material.dart';
import 'package:sangam_app/faculty.dart';
import 'package:sangam_app/courses.dart';
import 'package:sangam_app/seminar.dart';
import 'package:sangam_app/placement.dart';

class SOLS extends StatelessWidget {
  const SOLS({Key? key}) : super(key: key);

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
          'SOLS',
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
                      text: 'The School of Legal Studies (SOLS)',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ' is a department or unit within a university or other institution of higher education that is dedicated to providing education and training in the field of law. It typically offers a range of degree programs at the undergraduate, graduate, and postgraduate levels in areas such as criminal justice, civil law, and business law. The curriculum of these programs often includes a mix of coursework in legal theory and practice, as well as practical skills and experience through internships, mock trials, and simulations. The goal of the SLS is to prepare students for career as lawyers, judges, and legal professionals in a variety of settings, inlcuding private law firms, government agencies, and non-profit organizations.',
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
                  "Sangam University’s School of Legal Studies, approved by Bar Council of India, has evolved as Best LLB college in Rajasthan, established with a view to carter to the requirements of the legal profession. Located at the industrial town of Bhilwara, the School offers best curriculum of BA.LL.B, BBA.LL.B, where Students are groomed to face challenges of the legal world by providing them with a wide range of exposure on the theoretical as well as practical aspects of law.",
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
                  "1. The BBA & LLB Integrated Course offers a practical curriculum for undergraduates who choose a legal practice in the future. The management lessons of BBA will prepare them for the corporate sector. The course is an integration of law and business subjects. The career opportunities therefore are much wider.\n 2. For several decades, getting a Law degree after 10+2 schooling would take 6 years - three for getting a B.A., B.Com or BBA followed by another three years for LLB. The 5 year integrated Law program lets students save on time, effort and money by going through another academic year. It enables law students to develop and hone skills across a wide spectrum. The students gain a broad and thorough understanding of the legal system prevailing in the country.\n 3. After completion of the course, they can go on to work as lawyers, legal advisors, law reporters, legal assistants, etc.",
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
                            'assets/images/deans/Dr. Pramod.jpg',
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Dr. Pramod Kumar Sharma",
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
                        "Welcome and thank you for visiting the School of Legal Studies (SOLS), at Sangam University.\n\n Sangam University’s School of Legal Studies, approved by Bar Council of India, has evolved as Best LLB college in Rajasthan, established with a view to carter to the requirements of the legal profession. Located at the industrial town of Bhilwara, the School offers best curriculum of BA.LL.B, BBA.LL.B, where Students are groomed to face challenges of the legal world by providing them with a wide range of exposure on the theoretical as well as practical aspects of law.\n\n The BBA & LLB Integrated Course offers a practical curriculum for undergraduates who choose a legal practice in the future. The management lessons of BBA will prepare them for the corporate sector. The course is an integration of law and business subjects. The career opportunities therefore are much wider.\n\n After completion of the course, they can go on to work as lawyers, legal advisors, law reporters, legal assistants, etc.",
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
