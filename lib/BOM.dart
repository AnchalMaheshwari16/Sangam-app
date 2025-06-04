import 'package:sangam_app/drawer.dart';
import 'package:flutter/material.dart';

class BOM extends StatefulWidget {
  @override
  State<BOM> createState() => _BOMState();
}

class _BOMState extends State<BOM> {
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
            'Anurag Soni Message',
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
                    "assets/images/board_members/Mr.-Anurag-Soni.jpg",
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Mr. Anurag Soni",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Board of Management",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                "Mr. Anurag soni is the Whole-time Director & Chief Financial Officer of Sangam India Ltd. With his sharp finance acumen, he is entrusted with the responsibility of treasury management and streamlining operations for sustainable business growth.\nHe is a commerce graduate and has completed his MS Finance Degree from University of Nottingham, England. Apart from his professional expertise, he is also the Trustee and Member of the board at Sangam University. Mr. Anurag is also spearheading the company's corporate strategy initiatives and future expansions with a deep analysis of Sangam's competitive advantages and challenges",
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

