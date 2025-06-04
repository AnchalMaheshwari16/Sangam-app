import 'package:flutter/material.dart';
import 'package:sangam_app/home.dart';
import 'package:sangam_app/about.dart';
import 'package:sangam_app/administration.dart';
import 'package:sangam_app/alumni.dart';
import 'package:sangam_app/app_contributors.dart';
import 'package:sangam_app/board.dart';
import 'package:sangam_app/BOM.dart';
import 'package:sangam_app/chairperson.dart';
import 'package:sangam_app/applyForm.dart';
import 'package:sangam_app/initiative.dart';
import 'package:sangam_app/naac.dart';
import 'package:sangam_app/nirf.dart';
import 'package:sangam_app/schools.dart';
import 'package:sangam_app/placement.dart';
import 'package:sangam_app/president.dart';
import 'package:sangam_app/pro_president.dart';

class NavDrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      child: Drawer(
        child: Scrollbar(
        child: Container(
          height: 300,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20)),
              ),
              child: Container(
                height: 140,
                width: 140,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      fit: BoxFit.contain),
                ),
                child: null,
              ),
              ),
              ListTile(
                title: Text('Home',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomeScreen(title: "Home"))),
              ),
              ListTile(
                title: Text('About Us',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => About())),
              ),
              ListTile(
                title: Text('Chairperson Message',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Chairperson())),
              ),
              ListTile(
                title: Text('President Message',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => President())),
              ),
              ListTile(
                title: Text('Pro President\'s Message',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Pro_president())),
              ),
              ListTile(
                title: Text('BOM Message',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BOM())),
              ),
              ListTile(
                title: Text('Board of Management',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Board())),
              ),
              ListTile(
                title: Text('Administration',
                style: TextStyle(
                color: Colors.black,
                ),),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Administration())),
              ),
              ListTile(
                title: Text('Our Initiative',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Initiative())),
              ),
              ListTile(
                title: Text('Schools',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Schools())),
              ),
              ListTile(
                title: Text('Alumni',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Alumni())),
              ),
              ListTile(
                title: Text('Placement Cell',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Placement(slug:'placement'))),
              ),
              ListTile(
                title: Text('NAAC IQAC',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => NAAC())),
              ),
              ListTile(
                title: Text('NIRF',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => NIRF())),
              ),
              ListTile(
                title: Text('Enquiry',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ApplyForm())),
              ),
              ListTile(
                title: Text('App Contributors',
                style: TextStyle(
                color: Colors.black,
                ),
                ),
                textColor: Colors.black,
                visualDensity: VisualDensity(vertical: -4),
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Developers())),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}