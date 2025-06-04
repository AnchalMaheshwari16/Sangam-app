import 'package:flutter/material.dart';
import 'package:sangam_app/drawer.dart';
import 'package:http/http.dart' as http;

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  
final RegExp noEmojiRegExp = RegExp(
    // Match any character that is not in the Basic Multilingual Plane (BMP)
    // This includes emojis which are outside the BMP
    '[^\u0000-\uFFFF\\s]',
  );
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  submitForm() async {
    final uri =
        Uri.parse("https://suapp.sangamuniversity.ac.in/api/contactus.php");
    var map = new Map<String, dynamic>();
    map['name'] = nameController.text;
    map['message'] = messageController.text;
    map['subject'] = subjectController.text;
    map['number'] = numberController.text;
    map['email'] = emailController.text;

    http.Response response = await http.post(
      uri,
      body: map,
    );
  }
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
          toolbarHeight: 100,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        title: Text("Contact Us",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
      ),
       body: ListView(
          children: [
            Form(
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText: "Enter your name",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  255, 236, 241, 255)), //<-- SEE HERE
                        ),
                      ),

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is Required';
                        }
                        if (value.isEmpty ||
                            !RegExp(r'^[A-Za-z]+[A-Z a-z]+$').hasMatch(value) ||
                            noEmojiRegExp.hasMatch(value)) {
                          //allow upper and lower case alphabets and space
                          return "Enter Correct Name";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Enter your email",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  255, 236, 241, 255)), //<-- SEE HERE
                        ),
                      ),

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return ' Email is Required';
                        }
                        if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+$").hasMatch(value) ||
                            noEmojiRegExp.hasMatch(value)) {
                          //allow upper and lower case alphabets and space
                          return "Invalid Email Id";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: numberController,
                      decoration: const InputDecoration(
                        labelText: "Enter your phone number",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  255, 236, 241, 255)), //<-- SEE HERE
                        ),
                      ),
                      keyboardType: TextInputType.number,

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone no. is Required';
                        }
                        if (value.length>=10) {
                          return 'invalid phone number';
                        }

                        if (!RegExp(r'^[0-9]+$').hasMatch(value) ||
                            noEmojiRegExp.hasMatch(value)) {
                          //allow upper and lower case alphabets and space
                          return "Invalid Phone Number";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: subjectController,
                      decoration: const InputDecoration(
                        labelText: "Enter your subject",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  255, 236, 241, 255)), //<-- SEE HERE
                        ),
                      ),

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (!RegExp(r'^[A-Za-z]+$').hasMatch(value) ||
                            noEmojiRegExp.hasMatch(value)) {
                          //allow upper and lower case alphabets and space
                          return "Invalid Subject Name";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        labelText: "Enter your Message",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 3,
                              color: Color.fromARGB(
                                  255, 236, 241, 255)), //<-- SEE HERE
                        ),
                      ),

                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your message';
                        }
                        if (!RegExp(r'^[a-zA-Z0-9.-@*$%&#()?]+$').hasMatch(value) ||
                            noEmojiRegExp.hasMatch(value)) {
                          //allow upper and lower case alphabets and space
                          return "Invalid Message Formate";
                        }
                        return null;
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          submitForm();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                backgroundColor:
                                    Color.fromARGB(255, 236, 241, 255),
                                content: Text(
                                  'Message Send successfully',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                )),
                          );
                        }
                      },
                      child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 236, 241, 255),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 88, 120, 209)),
                            ),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'University Info',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 25),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        'Email Id : info@sangamuniversity.ac.in \nPhone No: (+91)1482-297455\nFor Admission: Dr. Amit Jain (+91)7891050000\nFor Research: Dr. Rakesh Bhandari (+91)7891050001\nFor Transport: Mr. Pawan Atre (+91)9001097360',textAlign: TextAlign.start),
                    // Html(
                    //     data:
                    //         '''<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3607.7420761526237!2d74.61915011496349!3d25.27926048385811!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3968c1b6a31d5663%3A0xa1815429f25fbaa5!2sSangam%20University!5e0!3m2!1sen!2sin!4v1676623775495!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>''')
                  ],
                ),
              )),
          ]
        ));
  }
}
