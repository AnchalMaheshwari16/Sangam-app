import 'package:sangam_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NAAC extends StatelessWidget {
  downloadNotice(link) async{
    if (!await launchUrl(Uri.parse(link), mode: LaunchMode.externalApplication )) {
      throw 'Could not launch $link';
    }
  }
const NAAC({super.key});
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
            'NAAC',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
      ),
      body: SingleChildScrollView(
          child: Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 10,
                  bottom: 0,
                ),
                child:Column(
            children: [
              // const Text(
              //     "Engineering and Technology is a broad set of disciplines that deal with everything connected to the design, manufacture, and maintenance of infrastructure, devices, tools, and information systems used by people on a daily basis.", textAlign: TextAlign.justify,),
              
              Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      downloadNotice("https://www.sangamuniversity.ac.in/assets/pdf/SU-Naac-Certificate.pdf");
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 109, 202),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                          child: Text(
                        "SU NAAC Certificate",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15),
                      )),
                    ),
                  )),
              Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      downloadNotice("https://www.sangamuniversity.ac.in/assets/pdf/Institutional_Grade_Sheet.pdf");
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 109, 202),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                          child: Text(
                        "SU NAAC Grade Sheet",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15),
                      )),
                    ),
                  )),
                  Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      downloadNotice("https://www.sangamuniversity.ac.in/assets/pdf/SANGAM_UNIVERSITY_iiqa.pdf");
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 109, 202),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                          child: Text(
                        "IIQA",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15),
                      )),
                    ),
                  )),
                  Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      downloadNotice("https://www.sangamuniversity.ac.in/assets/pdf/IIQASelfDeclarationUndertaking.pdf");
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 109, 202),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                          child: Text(
                        "IIQA - Self Declaration Undertaking",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15),
                      )),
                    ),
                  )),
                  Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      downloadNotice("https://www.sangamuniversity.ac.in/assets/pdf/SU-SSR-Prequalified2021.pdf");
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 109, 202),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                          child: Text(
                        "Sangam University SSR Report",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15),
                      )),
                    ),
                  )),
                  Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      downloadNotice("https://www.sangamuniversity.ac.in/assets/pdf/DeclarationHESSR.pdf");
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 109, 202),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                          child: Text(
                        "Declaration HESSR",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15),
                      )),
                    ),
                  )),
                  Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      downloadNotice("https://www.sangamuniversity.ac.in/assets/pdf/ProgramOutcomes.pdf");
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 109, 202),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                          child: Text(
                        "Program Outcomes",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15),
                      )),
                    ),
                  )),
                  Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      downloadNotice("https://www.sangamuniversity.ac.in/assets/pdf/CoursesonHumanvaluesEthics.pdf");
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 109, 202),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                          child: Text(
                        "Courses on Human Values & Ethics",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15),
                      )),
                    ),
                  )),
                  Container(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      downloadNotice("https://www.sangamuniversity.ac.in/assets/file/pdf/SU-AQAR-2020-21.pdf");
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 10, 109, 202),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                          child: Text(
                        "SU AQAR 2020-21",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15),
                      )),
                    ),
                  )),
                  ],
          ),),
        ));
  }
}

