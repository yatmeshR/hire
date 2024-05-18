import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/data.dart';
import 'package:path_provider/path_provider.dart';
import 'widgets.dart';
import 'dart:io';

class Register extends StatefulWidget {
  const Register();

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // Resume
  File? _resume;

  // Select the Resume
  Future<void> _pickResume() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null) {
      setState(() {
        _resume = File(result.files.single.path!);
      });
    }
  }

  // Save The Resume
  Future<void> _saveResume() async {
    if (_resume != null) {
      final directory = await getApplicationDocumentsDirectory();
      final newResumePath = '${directory.path}/resume.pdf';

      // Copy the selected resume to the application's documents directory
      await _resume!.copy(newResumePath);

      // Navigate to the resume view page
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => ResumeViewPage(resumePath: newResumePath),
      //   ),
      // );
    } else {
      // Handle the case where no resume is selected
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Please select a resume before submitting.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(color: Color(0xFFA3C17C)),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(color: Color(0xFFA3C17C)),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Let\'s Get Started',
                          style: TextStyle(
                              fontSize: 40.0, fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Please enter your current details accurately in the respective fields given below!!!',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.w400),
                        )
                      ],
                    )),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90),
                      topRight: Radius.circular(90),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Center(
                                  child: Text(
                                'Enter Your Details',
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold),
                              )),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Name',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter Full Name",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'E-mail',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter E-mail ID",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Age',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter Age",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Phone Number',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter Number",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'City',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter City",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text('Resume\n\nPlease include a resume'),
                              const SizedBox(
                                height: 10.0,
                              ),

                              // upload resume option
                              Column(
                                children: [
                                  InkWell(
                                    onTap: _pickResume,
                                    child: Row(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: LoginPlate2(
                                              icon: Icons.cloud,
                                              text: 'Choose'),
                                        ),
                                        SizedBox(width: 6.w,),
                                        if (_resume != null)
                                          Expanded(
                                            child: Text(
                                              'Resume Selected: ${_resume!.path}',
                                              maxLines: 2,
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          )
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.h,),

                                  //   Submit button

                                  GestureDetector(
                                    onTap:  _saveResume,
                                    child: Container(
                                      height: height * 0.061,
                                      margin:
                                          EdgeInsets.only(right: width * 0.043),
                                      decoration: const BoxDecoration(
                                          color: Color(0xFFa5a7a6)),
                                      child: Center(
                                        child: Text(
                                          "Submit",
                                          style: TextStyle(
                                              fontSize: height * 0.027),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Password',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Enter Password",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                'Confirm Password',
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              TextField(
                                style: const TextStyle(
                                    fontSize:
                                        16), // Adjust the font size if needed
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 16), // Adjust padding
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Set the border radius
                                    borderSide: BorderSide
                                        .none, // Remove the border lines
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(
                                      color: Colors.grey[
                                          400]), // Change the hint text color
                                  hintText: "Re-Enter Password",
                                  fillColor: const Color(
                                      0xFFe3e0e0), // Set the background color
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFA3C17C)),
                                  onPressed: () {},
                                  child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        fontSize: 30.0, color: Colors.black),
                                  )),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('Already a User?'),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'SIGN IN',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
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
