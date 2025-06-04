import 'package:flutter/material.dart';
import 'drawer.dart';

class About extends StatefulWidget {
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
          'About',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Image.asset('assets/images/u.jpg'),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'The word ',
                              
                            ),
                            TextSpan(
                              text: 'SANGAM',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ' means a Confluence of rivers, denoting an act of coming together or all merging into one. To uphold this unity, Sangam University has been established by BadrilalSoni Charitable trust and promoted by Sangam Group of Industries with the mission to make world class higher education affordable and accessible to all sections of society. The vision of our University is to become a center of excellence for holistic development and global education by cultivating and nurturing young minds to transform into global leaders of the future. The University tries to provide a professional environment along with imbibing a sense of moral and human values. We are committed to bring forth an educational milieu which is tuned to the needs of global markets.',
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 5),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            // Handle onTap action, such as navigating to the URL
                          },
                          child: Text(
                            'facebook.com',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Founded',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: ' in the year 2012, with state-of-the-art infrastructure and facilities, Sangam is built with the objective to become one of the best universities of Rajasthan. We meet the demands of this dynamic corporate and professional society.\n\n Our degree programmes and foundation years have always been distinctively challenging and flexible to foster a broader outlook. Our interdisciplinary approach does not just reinforce a wonderful education but empowers budding professionals of tomorrow.\n\n Sangam is a student-centered university that empowers each individual to succeed. We offer an accessible, nurturing and student-focused educational experience to those who want to move ahead steadily towards personal or professional growth. Our diverse faculty maintains good association with students, mentoring them throughout their entire educational journey.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
