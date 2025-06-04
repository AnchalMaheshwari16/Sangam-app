import 'package:flutter/material.dart';
import 'package:sangam_app/courses.dart';


class SOVS extends StatelessWidget {
  const SOVS({Key? key}) : super(key: key);

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
          'SOVS',
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
                      text: 'The School of Vocational Studies (SOVS)',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ' is a department or unit within a university or other institution of higher education that is dedicated to providing education and training in vocational or technical fields. It typically offers a range of degree programs at the undergraduate, graduate, and postgraduate levels in areas such as automotive repair, construction trades, healthcare technology, and information technology. The curriculum of these programs often includes a mix of coursework in technical and practical subjects, as well as hands-on skills and experience through internships, apprenticeships, and lab work. The goal of the SOVS is to prepare students for career in technical and vocational fields, as well as to provide them with the skills and knowledge needed to succeed in the workforce.',
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
              
            ],
          ),
        ),
      ),
    );
  }
}
