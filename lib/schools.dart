import 'package:sangam_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:sangam_app/SOET.dart';
import 'package:sangam_app/SOMS.dart';
import 'package:sangam_app/SOBAS.dart';
import 'package:sangam_app/SOLS.dart';
import 'package:sangam_app/SOAH.dart';
import 'package:sangam_app/SOAST.dart';
import 'package:sangam_app/SOP.dart';
import 'package:sangam_app/SON.dart';
import 'package:sangam_app/SOVS.dart';

class Schools extends StatefulWidget {
  @override
  State<Schools> createState() => _SchoolsState();
}

class _SchoolsState extends State<Schools> {
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
            'Schools',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
      ),
      body: SingleChildScrollView(
          
            child: Container(
          padding: const EdgeInsets.all(10),
          child: Wrap(
            runSpacing: 20,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SOET(),
                    ),
                  );
                },
                child: Stack(children: <Widget>[
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/SOET.jpg',
                        ),
                      ),
                    ),
                    height: 160,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: const [
                              0.0,
                              1.0
                            ])),
                  ),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.all(10),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'School of Engineering & Technology',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SOMS(),
                    ),
                  );
                },
                child: Stack(children: <Widget>[
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/SOMS.jpg',
                        ),
                      ),
                    ),
                    height: 160,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: const [
                              0.0,
                              1.0
                            ])),
                  ),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.all(10),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'School of Management Studies',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SOBAS(),
                    ),
                  );
                },
                child: Stack(children: <Widget>[
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/SOBAS.jpg',
                        ),
                      ),
                    ),
                    height: 160,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: const [
                              0.0,
                              1.0
                            ])),
                  ),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.all(10),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'School of Basic & Applied Science',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SOLS(),
                    ),
                  );
                },
                child: Stack(children: <Widget>[
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/SOLS.jpg',
                        ),
                      ),
                    ),
                    height: 160,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: const [
                              0.0,
                              1.0
                            ])),
                  ),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.all(10),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'School of Legal Studies',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SOAH(),
                    ),
                  );
                },
                child: Stack(children: <Widget>[
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/SOAH.jpg',
                        ),
                      ),
                    ),
                    height: 160,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: const [
                              0.0,
                              1.0
                            ])),
                  ),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.all(10),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'School of Arts and Humanities',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SOAST(),
                    ),
                  );
                },
                child: Stack(children: <Widget>[
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/SOAST.jpg',
                        ),
                      ),
                    ),
                    height: 160,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: const [
                              0.0,
                              1.0
                            ])),
                  ),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.all(10),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'School of Agriculture Science & Technology',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SOP(),
                    ),
                  );
                },
                child: Stack(children: <Widget>[
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/SOP.jpg',
                        ),
                      ),
                    ),
                    height: 160,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: const [
                              0.0,
                              1.0
                            ])),
                  ),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.all(10),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'School of Pharmacy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SON(),
                    ),
                  );
                },
                child: Stack(children: <Widget>[
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/SON.png',
                        ),
                      ),
                    ),
                    height: 160,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: const [
                              0.0,
                              1.0
                            ])),
                  ),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.all(10),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'School of Nursing',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SOVS(),
                    ),
                  );
                },
                child: Stack(children: <Widget>[
                  Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/SOVS.jpg',
                        ),
                      ),
                    ),
                    height: 160,
                  ),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        color: Colors.white,
                        gradient: LinearGradient(
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            colors: [
                              Colors.grey.withOpacity(0.0),
                              Colors.black,
                            ],
                            stops: const [
                              0.0,
                              1.0
                            ])),
                  ),
                  Container(
                    height: 160,
                    padding: const EdgeInsets.all(10),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'School of Vocational Studies',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
        )));
  }
}

