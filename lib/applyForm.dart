import 'package:flutter/material.dart';
import 'package:sangam_app/drawer.dart';
import 'package:http/http.dart' as http;

const List<String> list = <String>[
  'School of Engineering & Technology',
  'School of Basic & Applied Science',
  'School of Legal Studies',
  'School of Arts and Humanities',
  'School of Agriculture Science & Technology',
  'School of Pharmacy',
  'School of Education',
  'School of Nursing',
  'Diploma in Health Assistant',
  'School of Vocational Studies',
  'Research & Advance Studies',
];

class ApplyForm extends StatefulWidget {
  @override
  _ApplyFormState createState() => _ApplyFormState();
}

class _ApplyFormState extends State<ApplyForm> {
  final _formKey = GlobalKey<FormState>();
  final RegExp noEmojiRegExp = RegExp(
    // Match any character that is not in the Basic Multilingual Plane (BMP)
    // This includes emojis which are outside the BMP
    '[^\u0000-\uFFFF\\s]',
  );
  
  TextEditingController nameController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  String dropdownvalue = 'Select School';
// Initial Selected Value
  // List of items in our dropdown menu
  String dropdownValue = list.first;

  submitForm() async {
    final uri =
        Uri.parse("https://suapp.sangamuniversity.ac.in/api/applyform.php");
    var map = new Map<String, dynamic>();
    map['name'] = nameController.text;
    map['school'] = dropdownvalue;
    map['email'] = emailController.text;
    map['message'] = messageController.text;
    map['subject'] = subjectController.text;
    map['number'] = numberController.text;

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
          toolbarHeight: 60,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        title: Text("Apply Here",style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
      ),
      body: SingleChildScrollView(
          child: Form(
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
                              color: Color.fromARGB(255, 236, 241, 255)),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[A-Za-z]+[A-Z a-z]+$').hasMatch(value) ||
                            noEmojiRegExp.hasMatch(value)) {
                          //allow upper and lower case alphabets and space
                          return "Enter Correct Name";
                        }
                        else {
                          return null;
                        }
                      },
                    ),
                    DropdownButtonFormField(
                      value: dropdownValue,
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {},
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
                              color: Color.fromARGB(255, 236, 241, 255)),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty || value == "") {
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
                              color: Color.fromARGB(255, 236, 241, 255)),
                        ),
                      ),
                      keyboardType: TextInputType.number,
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
                              color: Color.fromARGB(255, 236, 241, 255)),
                        ),
                      ),
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
                              color: Color.fromARGB(255, 236, 241, 255)),
                        ),
                      ),
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
                                    Color.fromARGB(255, 7, 119, 44),
                                content: Text('Message Send successfully')),
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
}