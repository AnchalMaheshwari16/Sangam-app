import 'package:sangam_app/drawer.dart';
import 'package:flutter/material.dart';

class Initiative extends StatefulWidget {
  @override
  State<Initiative> createState() => _InitiativeState();
}

class _InitiativeState extends State<Initiative> {
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
          'Our Initiative',
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
                  SizedBox(height: 5),
                  Text(
                    "Student Chapter",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "The seed for the Computer Society of India (CSI) was first shown in the year 1965 with a handful of IT enthusiasts who were a computer user group and felt the need to organize their activities. They also wanted to share their knowledge and exchange ideas on what they felt was a fast emerging sector. Today the CSI takes pride in being the largest and most professionally managed association of and for IT professionals in India. The purposes of the Society are scientific and educational directed towards the advancement of the theory and practice of computer science and IT.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 5),
    Center(
      child: Text(
        "Techno Cultural Clubs",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    ),
    SizedBox(height: 10), // Added to reduce space
    Padding(
      padding: EdgeInsets.only(left: 2), // Add padding only to the left
      child: Text(
        "Cultural",
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
    ),
  ],
),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "Cultural Club (Samvardhan) is formed to promote cultural awareness among young generation. This club is a student body which is responsible for all the cultural events in the Institute around the year. This club enhances the skills of dancing, singing, playing musical instruments, mimicry and Nukkad Natak. This Club not only helps students to reduce the stress of academics as well as it helps student to provide a platform where they can explore their inner potentials.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "Literary Club",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "The Literary Club has been started to encourage our students to develop a taste for literature and also work towards improving their spoken as well as written language. Literary Club gives a platform to the students to exhibit & verbalize their imagination, originality and talents through a number of literary activities and games.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),
             Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "Social and Green Club",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "The aim is to inculcate social welfare thoughts in students who are the future of our nation and carry out actions reflecting the same without any prejudice.Thus there stands the scheme in the campus, to carry out actions reflecting the same with students under various disciplines like Educational Outreach, Green campus and Events working rigorously for literacy drives, environmental conservation and sustainability.This club works with the goal to work for the betterment of society and instill the spirit of social service among the students.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "Sports Club",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "The ever popular sports club is a platform for students to channelize their high energy levels towards maintaining their physical fitness. Students make the most of the courts and fields provided by the university. Various intra-college competitions have been held on the volley ball7mw3E9m, basket ball and tennis courts in the past few months. Student have also had their share of fun on the cricket filed and playing indoor games like chess and table tennis .Our residents have also appreciated the provision of our recent on campus gymnasium.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "Photographic Club",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "The Photographic Club encourages the shutter bugs to explore their creative perceptions with the camera.Learn various photographic techniques and other dimensions of this art by participating in the photographic event.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "Centre for Entrepreneurship & Skill Development",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "At Sangam university we promote the vision of contributing to the nation through excellence in quality education. Fulfilling our vision to contribute to nation building by giving opportunities to the aspirations of youth, Sangam University has formalised the Centre for Entrepreneurship and Skill Development (CESD).The aim of the centre is to materialise the vision of Chairman Shri R P Soni by President Prof. Karunesh Saxena through focusing on Innovation, Skilling an Entrepreneurship of the 'RISE' model.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),
            
           Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "Center for Competition Services",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "Sangam University focuses on holistic development of students. We not only aim at providing quality education through innovative pedagogies but also preparation / guidance and mock test for the competitive examinations.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "Center for Spoke",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "Sangam University has associated with IIT Bombay for Super Resource Center for Spoken Tutorial Project. The Spoken Tutorial project is the initiative of the ‘Talk to a Teacher’ activity of the National Mission on Education through Information and Communication Technology (ICT), launched by the Ministry of Human Resources and Development, Government of India. The use of spoken tutorials to popularize software development and its use will be coordinated through this website. The Spoken Tutorial project is being developed by IIT Bombay for MHRD, Government of India.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "NPTEL",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "Sangam University has served as a local chapter of 'National Program on Technology Enhanced Learning' since 18th December 2018.NPTEL is an acronym for National Program on Technology Enhanced Learning which is an initiative by seven Indian Institutes of Technology (IIT Bombay, Delhi, Guwahati, Kanpur, Kharagpur, Madras and Roorkee) and Indian Institute of Science (IISc) for creating course contents in engineering and science. NPTEL as a project originated from many deliberations between IITs, Indian Institutes of Management (IIMs) and Carnegie Mellon University (CMU) during the years 1999-2003. A proposal was jointly put forward by five IITs (Bombay, Delhi, Kanpur, Kharagpur and Madras) and IISc for creating contents for more than 100 courses as web based supplements and more than 100 complete video courses, for approximately forty hours of duration per course.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "Red Hat Academy",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "We could not be more excited to begin this collaborative partnership on 4th April, 2019 and to empower Sangam University students to establish a promising career path within open source and Red Hat technologies.We are committed to providing you with the support and resources you will need as you join an incredible ecosystem of academic Institutions who share a similar passion for their students' lifelong success. Our program is based on the premise that learning involves not just thinking, but doing. We want to help you challenge students with rigorous curriculum and hands-on labs. That will equip them with the enterprise-ready skills needed to reach their highest potential. As we become engaged in your academic mission, we are excited to help you become a differentiator in education and guide your students along a path of success.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "Oracle Academy",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "In the past year, Oracle Academy worked with more than 15,000 educational institutions across 128 countries, supporting more than 6.3 million students worldwide to prepare them for careers in our technology-driven global economy. Oracle Academy leverages Oracle’s global technology leadership to offer a complete portfolio of computer science education resources to secondary schools; technical, vocational, and two-year colleges; and 4-year colleges and universities, with the goal of helping students become college and career ready. To support continuous computer science learning at all levels, oracle make available a variety of resources that can be used in the classroom and in not-for-profit academic course- and degree-related research, including technology, curriculum and courseware, student workshops, educator training, and Oracle industry certification and exam preparation materials.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),

            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    "CISCO Networking Academy",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "Sangam University is a part of the exclusive community of CISCO NetAcad which will empower you to make a difference. As a partner, you're tasked with carrying the voice, the strength, and the value of CISCO NetAcad programs to your students and community. In Addition to this, you will get opportunities to collaborate on various Workforce Development Program. NIIT Foundation will support and facilitate helping your students for various opportunities like Women IT Rock, Find Yourself in the Future, Internship, Placements opportunities, etc.",
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