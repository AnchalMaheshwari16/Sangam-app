import 'package:flutter/material.dart';
import 'drawer.dart'; // Assuming drawer.dart contains the NavDrawer widget

class Alumni extends StatefulWidget {
  @override
  State<Alumni> createState() => _AlumniState();
}

class _AlumniState extends State<Alumni> {
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
          'About Alumni',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "The Alumni association is prerequisite to strengthen the Alumni and Alma Mater relationship. Sangam University is highly conscious of this fact & acknowledges the emotional bonding that the Alumni have with their Alma Mater. In this fast changing world, it is very essential to recognize the alumni relationship as an important strategic asset.It is essential that alumni remain in constant interaction so that the educational systems can derive full benefits through constructive & informative feedback from the professional field and the alumni remain well informed about the developmental activities of their alma mater.Alumni Association of Sangam University seva sansthan is registered under the Rajasthan societies registration act, 1958.",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 10, 35, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "Objectives of the Sangam Alumni Association:",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.fromLTRB(15, 10, 35, 5), // Adjusted padding
              decoration: BoxDecoration(
                // Adjust color as needed
              ),
              child: Text(
                "1. To keep pertinent and updated data about Alumnus.\n2. To build and foster close association with the Alumni.\n3. To sustain a sense of belonging with their Alma Mater by being in touch with Alumni.\n4. To provide a platform to the Alumni and other stakeholders for exchange of ideas and information.\n5. To take up help of Alumni guidance towards higher education.\n6. To communicate the events of the university periodically to the Alumni.\n7. To invite the Alumni and seek suggestions for betterment of the University.\n8. To conduct seminars, workshops with the support of Alumni.\n9. To help the poor and bright students with the help of Alumni.\n10. To help the unsettled Alumni with the support of Alumni.",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 5), // Adjust spacing between the text and the table

            // Define the table
            SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Container(
    margin: const EdgeInsets.symmetric(horizontal: 20), // Add margins to the container
    child: DataTable(
      columnSpacing: 10,
      headingRowColor: MaterialStateColor.resolveWith((states) => Colors.grey), // Set background color of the heading row
      columns: [
        DataColumn(label: Text('Sr. No.', style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold))), // Added Sr. No. column
        DataColumn(label: Text('Designation', style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold))),
        DataColumn(label: Text('Name', style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold))),
      ],
      rows: _buildRows(),
    ),
  ),
),

          ],
        ),
      ),
    );
  }

 
    final List<String> designation = [
      "President",
      "Secretary",
      "Treasurer",
      "Vice President(Int.)",
      "Vice President (Ext.)",
      "Joint Secretary",
      "Joint Secretary",
      "Executive Member",
      "Executive Member",
      "Executive Member",
      "Executive Member",
      "Executive Member",
      "Executive Member",
      "Executive Member",
      "Executive Member",
    ];
     List<DataRow> _buildRows() {
    final List<String> name = [
      "Mr. Vikas Toshniwal",
      "Mr. Anurag Sharma",
      "Mr. Abhishek Singh",
      "Mr. Somnath Saha",
      "Ms. Nidhi Vyas",
      "Mr. Sher Singh Chundawat",
      "Mr. Aamir Dayar",
      "Mr. Vikalp Singh Chouhan",
      "Mr. Govind Singh Solanki",
      "Mr. Anurag Chaturvedi",
      "Mr. Shantanu Choudhary",
      "Mr. Shashank Saraswat",
      "Mr. Neeraj Kumar Chhipa",
      "Mr. Himanshu Kothari",
      "Mr. Harshit Joshi",
    ];
    List<DataRow> rows = [];
    for (int i = 0; i < name.length; i++) {
      rows.add(DataRow(cells: [
        DataCell(Text((i + 1).toString())), // Add Sr. No.
        DataCell(Text(designation[i])),
        DataCell(Text(name[i])),
      ]));
    }
    return rows;
  }
}

void main() {
  runApp(MaterialApp(
    home: Alumni(),
  ));
}
