import 'package:flutter/material.dart';
import 'package:sangam_app/drawer.dart';
import 'package:sangam_app/BOM.dart';
import 'package:sangam_app/chairperson.dart';
import 'package:sangam_app/president.dart';
import 'package:sangam_app/about.dart';


class About_sangam extends StatefulWidget {
  @override
  _About_sangamState createState() => _About_sangamState();
}

class _About_sangamState extends State<About_sangam> {
  

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
        title: Text("About Sangam",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 236, 241, 255),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "About",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 88, 120, 209)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Center(
                      child: Text(
                        "Founded in the year 2012, with state-of-the-art infrastructure and facilities, Sangam is built with the objective to become one of the best universities of Rajasthan. We meet the demands of this dynamic corporate and professional society.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                        // color: Color.fromARGB(255, 88, 120, 209)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  About(),
                        ),
                      ),
                      child: Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            // color: Color.fromARGB(255, 236, 241, 255),
                            border: Border.all(),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Center(
                            child: Text(
                              "Read More",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 88, 120, 209)),
                            ),
                          )),
                    )
                  ]),
            ),
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
                              builder: (context) => BOM(),
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
                                Icons.group,
                                size: 80,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Board of",
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Management",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
                                    builder: (context) => Chairperson(),
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
                                    "Chairperson Message",
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
                                    builder: (context) => President(),
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
                                    "President Message",
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
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 236, 241, 255),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Vision",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 88, 120, 209)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "To contribute to India and the Society through excellence in quality education with management, humanities, scientific & technical development and research; to serve as a valuable resource in industry and societal front; and to be a source of inspiration for all Indians.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                        // color: Color.fromARGB(255, 88, 120, 209)),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 236, 241, 255),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Mission",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 88, 120, 209)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "To generate new knowledge and concept by applying cutting-edge research and to promote the academic ambience by offering state-of-the-art undergraduate, postgraduate and research programs.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                        // color: Color.fromARGB(255, 88, 120, 209)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "To identify the perception of Indian and regional needs, areas of specialization upon which the institute can concentrate and prove meaningful worth.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                        // color: Color.fromARGB(255, 88, 120, 209)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "To undertake collaborative assignments and projects which offer opportunities for long-term interaction with academia and industry.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                        // color: Color.fromARGB(255, 88, 120, 209)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        "To develop human potential to its fullest extent so that intellectually capable and imaginatively gifted leaders can emerge in a range of professions.",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                        // color: Color.fromARGB(255, 88, 120, 209)),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 20,
            ),
          ]),
        ));
  }
}
