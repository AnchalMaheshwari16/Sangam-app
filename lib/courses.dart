import 'package:flutter/material.dart';
import 'package:sangam_app/drawer.dart';

class Courses extends StatefulWidget {
  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
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
          'Courses',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Vertical scrolling
        child: Padding(
          padding: const EdgeInsets.all(20), // Padding for entire section
          child: Column( // Use a Column to place text above the Table
            crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch to full width
            children: [
              Text( // Text to appear above the TableRow
                'Fees Structure for Session 2024-25 Batch\n', // Your desired text
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 116, 21, 14),
                ),
                textAlign: TextAlign.center, // Center the text
              ),
              Text( // Text to appear above the TableRow
                'RESEARCH PROGRAMME ', // Your desired text
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center, // Center the text
              ),
              SizedBox(height: 16.0), // Spacing between the text and the table
              Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(3),   // Flex for Fees column
                },
                border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                children: [
                  // Existing table row with the 'RESEARCH PROGRAMME 13/04/2024' text
                TableRow(
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Ph.D',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 120000',
                        ),
                        Text(
                          'II yr - 120000',
                        ),
                        Text(
                          'III yr - 120000',
                        ),
                        Text(
                          'Total - 360000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Ph.D  (Part Time)',
                        ),
                        Text(
                          '(4 Yrs / 8 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 92000',
                        ),
                        Text(
                          'II yr - 92000',
                        ),
                        Text(
                          'III yr - 92000',
                        ),
                        Text(
                          'IV yr - 92000',
                        ),
                        Text(
                          'Total - 368000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),                   
                  ],
                ),
                
                ],
              ),
              
                


            Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF ENGINEERING & TECHNOLOGY',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Bachelor   of   Technology  (B.Tech)   in   Computer   Science/   Electrical/ Mechanical/  Industrail/  Mining/  ECE/  Civil/  Mechatronics/  Artificial Intelligence & Data Science.',
                        ),
                        Text(
                          '(4 Yrs / 8 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 113000',
                        ),
                        Text(
                          'II yr - 120000',
                        ),
                        Text(
                          'III yr - 127000',
                        ),
                        Text(
                          'IV yr - 135000',
                        ),
                        Text(
                          'Total - 495000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Lateral Entry in II Year Bachelor of Technology (B.Tech) in Computer Science/  Electrical/  Mechanical/  Mining/  ECE/  Civil/  Mechatronics/ Artificial Intelligence & Data Science.',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - Nil',
                        ),
                        Text(
                          'II yr - 120000',
                        ),
                        Text(
                          'III yr - 127000',
                        ),
                        Text(
                          'IV yr - 135000',
                        ),
                        Text(
                          'Total - 382000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),                   
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('3'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Master of  Technology (M.Tech-Full Time in Computer Science/ Power Systems  &  Power  Electronics/  VLSI/  Production/  Structural/  Remote Sensing',
                        ),
                        Text(
                          '(2 Yrs / 4 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 65000',
                        ),
                        Text(
                          'II yr - 68500',
                        ),
                        Text(
                          'Total - 133500',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('4'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Master of Technology (M.Tech- Part Time) in Computer Science/ Power Systems  &  Power  Electronics/  VLSI/  Production/  Structural/  Remote Sensing',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 48500',
                        ),
                        Text(
                          'II yr - 51500',
                        ),
                        Text(
                          'III yr - 54500',
                        ),
                        Text(
                          'Total - 154500',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('5'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Diploma  in  Engineering  in  Computer  Science/  Electrical/  Mechanical/ Mining/ ECE/ Civil',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 65000',
                        ),
                        Text(
                          'II yr - 70000',
                        ),
                        Text(
                          'III yr - 75000',
                        ),
                        Text(
                          'Total - 210000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('6'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Lateral Entry in Diploma in Engineering in Computer Science/ Electrical/Mechanical/ Mining/ ECE/ Civil',
                        ),
                        Text(
                          '(2 Yrs / 4 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - Nil',
                        ),
                        Text(
                          'II yr - 70000',
                        ),
                        Text(
                          'III yr - 75000',
                        ),
                        Text(
                          'Total - 145000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('7'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'D Voc in Mining',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 65000',
                        ),
                        Text(
                          'II yr - 68500',
                        ),
                        Text(
                          'III yr - 73000',
                        ),
                        Text(
                          'Total - 206500',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('8'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'BCA',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 70000',
                        ),
                        Text(
                          'II yr - 74000',
                        ),
                        Text(
                          'III yr - 79000',
                        ),
                        Text(
                          'Total - 223000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('9'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'MCA',
                        ),
                        Text(
                          '(2 Yrs / 4 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 70000',
                        ),
                        Text(
                          'II yr - 74000',
                        ),
                        Text(
                          'Total - 144000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('10'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'PGDCA',
                        ),
                        Text(
                          '(1 Yr)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 16000',
                        ),
                        Text(
                          'Total - 16000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                ],
               ),

            




                Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'DEPARTMENT OF FIRE AND SAFETY',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Diploma in Fire and Safety management (Health Safety and Enviornment/Industrial Safety Management)',
                        ),
                        Text(
                          '(1 Year)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 48000',
                        ),
                        Text(
                          'Total - 48000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'PG Diploma in Fire and Safety Management (Health Safety and Enviornment / Industrial Safety Management)',
                        ),
                        Text(
                          '(1 Year)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 54000',
                        ),
                        Text(
                          'Total - 54000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),                   
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('3'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Advance Diploma in Industrial Safety Management',
                        ),
                        Text(
                          '(1 Year)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 57000',
                        ),
                        Text(
                          'Total - 57000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('4'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Bachelor s Degree in Fire Technology and Industrial Saferty Management',
                        ),
                        Text(
                          '(3 Years)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 57000',
                        ),
                        Text(
                          'II yr - 60000',
                        ),
                        Text(
                          'III yr - 65000',
                        ),
                        Text(
                          'Total - 182000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('5'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Master s Degree in MBA Fire Tech and Indust Saferty Mgmt.',
                        ),
                        Text(
                          '(2 Years)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 65000',
                        ),
                        Text(
                          'II yr - 69000',
                        ),
                        Text(
                          'Total - 134000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                ],
               ),













              Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF MANAGEMENT STUDIES',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'BBA',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 95000',
                        ),
                        Text(
                          'II yr - 100000',
                        ),
                        Text(
                          'III yr - 105000',
                        ),
                        Text(
                          'Total - 300000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'B Com (Hons)',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 43000',
                        ),
                        Text(
                          'II yr - 46000',
                        ),
                        Text(
                          'III yr - 49000',
                        ),
                        Text(
                          'Total - 138000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),                   
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('3'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'MBA (2 Year) With specialization in Finance/ Marketing / HR/ Hospital Administration / Agri-Business Management',
                        ),
                        Text(
                          '(2 Yrs / 4 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 130000',
                        ),
                        Text(
                          'IIyr - 135000',
                        ),
                        Text(
                          'Total - 265000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('4'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'MBA Executive *',
                        ),
                        Text(
                          '(2 Yrs / 4 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 50000',
                        ),
                        Text(
                          'II yr - 52000',
                        ),
                        Text(
                          'Total - 102000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('5'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'MBA (1 Year ) With specialization in Marketing/Agri-Business Management',
                        ),
                        Text(
                          '(1 Yrs / 2 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 65000',
                        ),
                        Text(
                          'Total - 65000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                ],
               ),





               Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF HOTEL MANAGEMENT',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Diploma in Hotel Mangement ( DHM ) *',
                        ),
                        Text(
                          '(1 Yr / 2 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 20000',
                        ),
                        Text(
                          'Total - 20000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'BHM ( Hotel Mangement ) *',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 40000',
                        ),
                        Text(
                          'II yr - 42000',
                        ),
                        Text(
                          'III yr - 43000',
                        ),
                        Text(
                          'Total - 125000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),                   
                  ],
                ),
                ],
               ),




                Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF BASIC & APPLIED SCIENCES',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Bachelor of Science (B.SC-PCM/CBZ)',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 32000',
                        ),
                        Text(
                          'II yr - 34500',
                        ),
                        Text(
                          'III yr - 36500',
                        ),
                        Text(
                          'Total - 103000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          '(Bachelor of Science B.SC (Hons))',
                        ),
                        Text(
                          '(4 Yrs / 8 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 32000',
                        ),
                        Text(
                          'II yr - 34500',
                        ),
                        Text(
                          'III yr - 36500',
                        ),
                        Text(
                          'IV yr - 38500',
                        ),
                        Text(
                          'Total - 141500',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),                   
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('3'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Master   of   Science   (M.sc.–   Chemistry/   Physics/   Botany/   Zoology/ Mathematics / Environment/ Geology/ Geophysics)',
                        ),
                        Text(
                          '(2 Yrs / 4 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 34500',
                        ),
                        Text(
                          'II yr - 36500',
                        ),
                        Text(
                          'Total - 71000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('4'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Master of Science (M.sc.–  Geo Informatics)',
                        ),
                        Text(
                          '(2 Yrs / 4 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 56000',
                        ),
                        Text(
                          'II yr - 59000',
                        ),
                        Text(
                          'Total - 115000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('5'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'PG Diploma in Remote Sensing and GIS',
                        ),
                        Text(
                          '(1 Yr)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 16000',
                        ),
                        Text(
                          'Total - 16000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                ],
               ),


               Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF VOCATIONAL STUDIES',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'B.VOC-Graphics / Fashion / Interior/ Digital Marketing',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 86500',
                        ),
                         Text(
                          'II yr - 86500',
                        ),
                         Text(
                          'III yr - 87000',
                        ),
                        Text(
                          'Total - 260000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                ],
               ),





                Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF AGRICULTURE SCIENCE & TECHNOLOGY',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'B.SC. AGRICULTURE (HONS.) ( Through Jet )',
                        ),
                        Text(
                          '(4 Yrs / 8 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 75000',
                        ),
                         Text(
                          'II yr - 75000',
                        ),
                         Text(
                          'III yr - 75000',
                        ),
                         Text(
                          'IV yr - 75000',
                        ),
                        Text(
                          'Total - 300000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'B.SC. AGRICULTURE (Agri-Business Management)',
                        ),
                        Text(
                          '(4 Yrs / 8 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 60000',
                        ),
                         Text(
                          'II yr - 65000',
                        ),
                         Text(
                          'III yr - 70000',
                        ),
                         Text(
                          'IV yr - 75000',
                        ),
                        Text(
                          'Total - 270000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                ],
               ),





                Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF PHARMACY',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Bachelor of Pharmacy (B.PHARMA)',
                        ),
                        Text(
                          '(4 Yrs / 8 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 130000',
                        ),
                         Text(
                          'II yr - 137000',
                        ),
                         Text(
                          'III yr - 145000',
                        ),
                         Text(
                          'IV yr - 154000',
                        ),
                        Text(
                          'Total - 566000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Diploma in Pharmacy (D.PHARMA)',
                        ),
                        Text(
                          '(2 Yrs)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 130000',
                        ),
                         Text(
                          'II yr - 130000',
                        ),
                        Text(
                          'Total - 260000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                ],
               ),





               Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF ARTS & HUMANITIES',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Bachelor   of   Arts   (BA)   in   Geography/   Political   Science/   History/ Economics/  English  Literature/  Hindi  Literature/  Sanskrit  Literature/ Sociology/ Public administration/ Drawing/ Music',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 32500',
                        ),
                         Text(
                          'II yr - 34000',
                        ),
                         Text(
                          'III yr - 36500',
                        ),
                        Text(
                          'Total - 103000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Master   of   Arts   (MA)   in   History/   Geography/   Political   Science/ Economics/   Sociology/   Public   Administration/   English   Literature/ Sanskrit    Literature/    Hindi    Literature/    Music/    Drawing/    Panting/Sociology',
                        ),
                        Text(
                          '(2 Yrs)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 21000',
                        ),
                         Text(
                          'II yr - 23000',
                        ),
                        Text(
                          'Total - 44000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('3'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Master of Social work ( MSW)',
                        ),
                        Text(
                          '(2 Yrs)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 21000',
                        ),
                         Text(
                          'II yr - 23000',
                        ),
                        Text(
                          'Total - 44000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                ],
               ),




                 Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF EDUCATION',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Diploma in Guidance and counselling',
                        ),
                        Text(
                          '(1 Yr)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 20000',
                        ),
                        Text(
                          'Total - 20000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'PG Diploma in Education Leadership',
                        ),
                        Text(
                          '(1 Yr)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 20000',
                        ),

                        Text(
                          'Total - 20000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('3'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'MA / M.Sc. Education Technology',
                        ),
                        Text(
                          '(2 Yrs)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 20000',
                        ),
                         Text(
                          'II yr - 22000',
                        ),
                        Text(
                          'Total - 42000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('4'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'MA in Education',
                        ),
                        Text(
                          '(2 Yrs)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 21000',
                        ),
                         Text(
                          'II yr - 23000',
                        ),
                        Text(
                          'Total - 44000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                ],
               ),




                Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF LIBRARY SCIENCE',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Bachelor in Library Science (B.LIB)',
                        ),
                        Text(
                          '(1 Yr / 2 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 23000',
                        ),
                        Text(
                          'Total - 23000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Diploma in Library Science (D.LIB)',
                        ),
                        Text(
                          '(1 Yr / 2 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 23000',
                        ),
                        Text(
                          'Total - 23000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('3'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Master  in Library Science (M.LIB)',
                        ),
                        Text(
                          '(1 Yr / 2 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 23000',
                        ),
                        Text(
                          'Total - 23000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                
                ],
               ),




                Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF LEGAL STUDIES',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'BA-LLB',
                        ),
                        Text(
                          '(5 Yrs / 10 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 77000',
                        ),
                        Text(
                          'II yr - 82000',
                        ),
                        Text(
                          'III yr - 87000',
                        ),
                        Text(
                          'IV yr - 92000',
                        ),
                        Text(
                          'V yr - 98000',
                        ),
                        Text(
                          'Total - 436000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Bachelor of Law (LL.B)',
                        ),
                        Text(
                          '(3 Yrs)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 32000',
                        ),
                        Text(
                          'II yr - 34000',
                        ),
                        Text(
                          'III yr - 36000',
                        ),
                        Text(
                          'Total - 102000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('3'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Master   of   Law   (LL.M)   in   Constitutional  &  Administrative  Law/ Criminal Law/  Corporate Law',
                        ),
                        Text(
                          '(2 Yrs / 4 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 25000',
                        ),
                        Text(
                          'II yr - 27000',
                        ),
                        Text(
                          'Total - 52000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),               
                ],
               ),




                Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF PHYSIOTHERAPY',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'BPT Bachelor of Physiotherapy *',
                        ),
                        Text(
                          '(4 Yrs / 8 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 60000',
                        ),
                        Text(
                          'II yr - 65000',
                        ),
                        Text(
                          'III yr - 70000',
                        ),
                        Text(
                          'IV yr - 75000',
                        ),
                        Text(
                          'Total - 270000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),  
                ],
               ),





               Container(
                padding: EdgeInsets.only(top:18,bottom: 16.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'SCHOOL OF NURSING								',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

               Table(
                columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(2),   // Flex for Fees column
                },
               border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
              children: [ 
                TableRow(
                  children: [
                    TableCell(                     
                      verticalAlignment: TableCellVerticalAlignment.fill,         
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Program & Duration',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'B.sc Nursing *',
                        ),
                        Text(
                          '(4 Yrs / 8 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 100000',
                        ),
                        Text(
                          'II yr - 108000',
                        ),
                        Text(
                          'III yr - 116000',
                        ),
                        Text(
                          'IV yr - 125000',
                        ),
                        Text(
                          'Total - 449000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),  
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Gnm Nursing *',
                        ),
                        Text(
                          '(3 Yrs / 6 Sem)',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I yr - 70000',
                        ),
                        Text(
                          'II yr - 75500',
                        ),
                        Text(
                          'III yr - 81500',
                        ),
                        Text(
                          'Total - 227000',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),  
                ],
               ),





              Container(
                padding: EdgeInsets.only(top:18,bottom: 18.0), // Adjust the padding as needed
                child: Center(
                  child: Text(
                    'Other Fees',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black, // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            Table(
              columnWidths: {
                  0: FixedColumnWidth(60), // Width for S.No. column
                  1: FlexColumnWidth(2),   // Flex for Program & Duration column
                  2: FlexColumnWidth(1),   // Flex for Fees column
                },
             border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
            children: [ 
                TableRow(
                  children: [
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'S.No.',
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 178, 212, 240), // Background color
                          borderRadius: BorderRadius.circular(8.0), // Optional: Adds rounded corners
                        ),
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Fees 2024-25',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // Text color
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('1'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'One Time Admission Processing Fee for All',
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rs. 500',
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('2'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Registration Fee For Research Programme',
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rs. 2000',
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('3'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Hostel A.C. + Single Occupancy (Yearly)',
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rs. 140000',
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('4'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Hostel Single Occupancy (Yearly)',
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rs. 110000',
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('5'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Hostel Double Occupancy (Yearly)',
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rs. 100000',
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('6'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Hostel Triple Occupancy (Yearly)',
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rs. 90000',
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('7'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'One Time Refundable Hostel Caution Money',
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rs. 3000',
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('8'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Bus Fee Yearly',
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rs. 20000',
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
                TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('9'),
                      ),
                    ),
                    TableCell(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          'Alumni Fees will be Charged One Time with Final Semester/Year Fees',
                        ),
                        ]
                      ),
                    ),
                  ),
                    TableCell(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rs. 500',
                        ),
                      ],
                    ),
                  ),
                ),
                  ],
                ),
               
              ],
            ),
            ],
          ),
        ),
      ),
    );
  }
}