// import 'dart:convert';
// // import 'package:sangam/applyForm.dart';
// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;

// class SecondPage extends StatefulWidget {
//   final String slug;
//   final String title;
//   const SecondPage({super.key, required this.slug, this.title = ""});

//   @override
//   DynamicPage createState() => DynamicPage(slug: slug, title: title);
// }

// Future fetchPage(slug) async {
//   final response = await http.get(Uri.parse(
//       'https://suapp.sangamuniversity.ac.in/api/get_page.php?slug=$slug'));

//   if (response.statusCode == 200) {
//     return jsonDecode(response.body);
//   } else {
//     throw Exception('Failed to load page');
//   }
// }

// class DynamicPage extends State<SecondPage> {
//   DynamicPage({required this.slug, this.title = ""});
//   final String slug;
//   final String title;
//   late Future futurePage;

//   @override
//   void initState() {
//     super.initState();
//     futurePage = fetchPage(slug);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           backgroundColor: Colors.transparent,
//           toolbarHeight: 60,
//           iconTheme: const IconThemeData(color: Colors.black),
//           elevation: 0,
//           title: Text(
//             (title == "" ? slug : title),
//             style: const TextStyle(
//                 color: Colors.black, fontWeight: FontWeight.w800),
//           ),
//         ),
//         body: FutureBuilder(
//           future: futurePage,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return SingleChildScrollView(
//                 child: Container(
//                     padding: const EdgeInsets.only(left: 20, right: 20),
//                     child: Column(
//                       // children: [
//                       //   Html(data: snapshot.data["contents"], style: {
//                       //     "p": Style(textAlign: TextAlign.justify),
//                       //     "li": Style(textAlign: TextAlign.justify),
//                       //     // tables will have the below background color
//                       //     "table": Style(
//                       //       backgroundColor:
//                       //           Color.fromARGB(0x50, 0xee, 0xee, 0xee),
//                       //     ),
//                       //     // some other granular customizations are also possible
//                       //     "tr": Style(
//                       //       border:
//                       //           Border(bottom: BorderSide(color: Colors.grey)),
//                       //     ),
//                       //     "th": Style(
//                       //       padding: EdgeInsets.all(6),
//                       //       backgroundColor: Colors.grey,
//                       //     ),
//                       //     "td": Style(
//                       //       padding: EdgeInsets.all(6),
//                       //       alignment: Alignment.topLeft,
//                       //     ),
//                       //   }),
//                       //   // Html(
//                       //   //   data: snapshot.data["contents"],
//                       //   //   style: {'html': Style(textAlign: TextAlign.center)},
//                       //   // )
//                       // ],
//                     )),
//               );
//             } else if (snapshot.hasError) {
//               return Text('${snapshot.error}');
//             }

//             // By default, show a loading spinner.
//             return SizedBox(
//               height: MediaQuery.of(context).size.height / 1.3,
//               child: const Center(
//                 child: CircularProgressIndicator(),
//               ),
//             );
//           },
//         ));
//   }
// }
