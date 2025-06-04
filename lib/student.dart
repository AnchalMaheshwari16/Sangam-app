import 'package:flutter/material.dart';
import 'package:sangam_app/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sangam_app/placement.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sangam_app/ERP.dart';

class StudentPage extends StatefulWidget {
  
  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
          backgroundColor: Colors.transparent,
          toolbarHeight: 60,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        title: Text("Student Corner",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
      ),
      body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: 
                  GestureDetector(
                      onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WebViewContainer(),
                            ),
                          ),
                      child: Container(
                        width: 170,
                        height: 170,
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 236, 241, 255),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              child: Icon(
                                Icons.groups_sharp,
                                size: 80,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Student",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "ERP",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ))),
                      SizedBox(width: 10,),
                      Expanded(
                    flex: 1,
                    child: 
                  SizedBox(
                    width: 170,
                    height: 170,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Placement(slug: "Placement"),
                                  ),
                                ),
                            child: Container(
                                width: 170,
                                height: 80,
                                padding: const EdgeInsets.all(15),
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 236, 241, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Placements",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                        GestureDetector(
                            onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WebViewContainer(),
                                  ),
                                ),
                            child: Container(
                                width: 170,
                                height: 80,
                                padding: const EdgeInsets.all(15),
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 236, 241, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Attendence",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        // onTap: () => Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => StackedCardDemo(),
                        //   ),
                        // ),
                        child: Column(
                          children: [
                            Container(
                              width: 70,
                              height: 70,
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 236, 241, 255),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const SizedBox(
                                width: double.infinity,
                                child: Icon(
                                  Icons.more_time,
                                  size: 40,
                                ),
                              ),
                            ),
                            const Text(
                              "Time-table",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ])),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                left: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
              )),
              padding: const EdgeInsets.only(left: 30),
              width: double.infinity,
              child: const Text("E-Notice",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            ),
            // FutureBuilder(
            //     future: futureItems,
            //     builder: (context, snapshot) {
            //       if (snapshot.hasData) {
            //         return CarouselSlider(
            //           options: CarouselOptions(aspectRatio: 2.0, height: 100),
            //           items: [
            //             for (var item in snapshot.data)
            //               (Builder(
            //                 builder: (BuildContext context) {
            //                   return Container(
            //                       padding: const EdgeInsets.all(5),
            //                       width: MediaQuery.of(context).size.width,
            //                       margin: const EdgeInsets.symmetric(
            //                           horizontal: 5.0),
            //                       child: Row(
            //                         children: [
            //                           Container(
            //                             clipBehavior: Clip.antiAlias,
            //                             decoration: const BoxDecoration(
            //                               borderRadius: BorderRadius.all(
            //                                   Radius.circular(20)),
            //                               color: Colors.transparent,
            //                               image: DecorationImage(
            //                                 fit: BoxFit.cover,
            //                                 image: NetworkImage(
            //                                   'https://www.sangamuniversity.ac.in/assets/images/banner/1673609574.png',
            //                                 ),
            //                               ),
            //                             ),
            //                             width: 50,
            //                             height: 50,
            //                           ),
            //                           const SizedBox(
            //                             width: 10,
            //                           ),
            //                           Container(
            //                             width: 169,
            //                             child: Text(item["notice_title"],
            //                                 style: const TextStyle(
            //                                     fontSize: 12,
            //                                     fontWeight: FontWeight.bold)),
            //                           ),
            //                           GestureDetector(
            //                             onTap: () => downloadNotice(
            //                                 "https://www.sangamuniversity.ac.in/assets/file/pdf/Result_Ph.D._Entrance_Exam_Jan_2023_(1).pdf"),
            //                             child: Container(
            //                               clipBehavior: Clip.antiAlias,
            //                               decoration: const BoxDecoration(
            //                                 borderRadius: BorderRadius.all(
            //                                     Radius.circular(20)),
            //                                 color: Colors.transparent,
            //                                 image: DecorationImage(
            //                                   fit: BoxFit.cover,
            //                                   image: AssetImage(
            //                                     'assets/download.png',
            //                                   ),
            //                                 ),
            //                               ),
            //                               width: 50,
            //                               height: 50,
            //                             ),
            //                           )
            //                         ],
            //                       ));
            //                 },
            //               ))
            //           ],
            //         );
            //       } else if (snapshot.hasError) {
            //         return Text('${snapshot.error}');
            //       }
            //       return const SizedBox(
            //         height: 50,
            //         width: double.infinity,
            //         child: Center(
            //           child: CircularProgressIndicator(),
            //         ),
            //       );
            //     })
          ],
        )));
  }
}
