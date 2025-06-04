import 'package:sangam_app/drawer.dart';
import 'package:flutter/material.dart';

class Board extends StatefulWidget {
  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
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
            'Board of Management',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
              'assets/images/board_members/RP-Soni.jpg',
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "R.P. Soni",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Chairperson\nSangam University, Bhilwara",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/karunesh.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Prof. Karunesh Saxena",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "President\nSangam University, Bhilwara",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/S.N.-Modani.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Dr. S.N. Modani",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Member",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/V.-K.-Sodani-.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Shri V. K. Sodani",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Member",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/Antima-Soni.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Miss. Antima Soni",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Member",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/Mr.-Anurag-Soni.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Shri Anurag Soni",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Member",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/Mr.-Pranal-Modani.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Shri Pranal Modani",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Member",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/Mr.-Yaduvendra-Mathur.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Shri Yaduvendra Mathur, IAS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Member",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/Shri-Harendra-Kumar.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Shri Harendra Kumar, IPS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Member",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/Prof.-P.K.-Singh.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Prof. P.K. Singh",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Member",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            // Container(
            //   width: double.infinity,
            //   margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            //   padding: const EdgeInsets.all(15),
            //   decoration: const BoxDecoration(
            //     color: Color.fromARGB(255, 236, 241, 255),
            //     borderRadius: BorderRadius.all(Radius.circular(20)),
            //   ),
            //   child: Column(children: [
            //     Image.asset(
            //       "assets/images/board_members/Prof.Dr_.Ramesh-Sharda.jpg",
            //       height: 200,
            //       fit: BoxFit.cover,
            //     ),
            //     SizedBox(
            //       height: 10,
            //     ),
            //     Text(
            //       "Commissioner College Education",
            //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            //     ),
            //     Text(
            //       "Member",
            //       style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            //       textAlign: TextAlign.center,
            //     )
            //   ]),
            // ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/Prof.Dr_.Ramesh-Sharda.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Prof.(Dr.)Ramesh Sharda",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Member",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/Vibhor-Paliwal.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Prof. Vibhor Paliwal",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "President Nominee",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/Prof.-Rakesh-Bhandari.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Prof. Rakesh Bhandari",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "President Nominee",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/images/board_members/Prof.-Rajeev-Mehta.jpg",
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Prof. (Dr.) Rajeev Mehta",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Registrar\nSangam University, Bhilwara",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )
              ]),
            ),
          ]),
        ));
  }
}

