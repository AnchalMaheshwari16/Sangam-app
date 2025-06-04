import 'package:flutter/material.dart';
import 'package:sangam_app/courses.dart';


class SON extends StatelessWidget {
  const SON({Key? key}) : super(key: key);

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
          'SON',
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
                      text: 'The School of Nursing (SON)',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text:
                          ' is a department or unit within a university or other institution of higher education that is dedicated to providing education and training in the field of nursing. It typically offers a range of degree programs at the undergraduate, graduate, and postgraduate levels in areas such as registered nursing, nursing leadership, and nursing education. The curriculum of these programs often includes a mix of coursework in nursing theory and practice, as well as practical skills and experience through internships, and clinical rotations. The goal of the SON is to prepare students for career as nurses, who are responsible for providing care, as well as to promoting health and wellness in a variety of settings.',
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
