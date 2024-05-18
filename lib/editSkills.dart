// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_full_hex_values_for_flutter_colors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'data.dart';
import 'widgets.dart';

class EditSkills extends StatefulWidget {
  const EditSkills();

  @override
  State<EditSkills> createState() => _EditSkillsState();
}

class _EditSkillsState extends State<EditSkills> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFD5E4E2),
        body: Container(
          padding: EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'Skills',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.02,
              ),

              //Search Box
              Container(
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xFFA3c17C),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Skill',
                          hintStyle: TextStyle(color: Colors.white60),
                          border: InputBorder.none,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),

              // Ad section :
              Image.asset('assets/ad1.png'),
              SizedBox(
                height: height * 0.03,
              ),

              // Browse Skills :
              Text(
                'Browse Skills',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              // Grid of options :
              SingleChildScrollView(
                child: Container(
                  color: Colors.white10,
                  height: height * 0.45,
                  width: double.infinity,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      //Containers of the list

                      //Container 1 :
                      SkillContainer(
                        color1: Color(0x0097b2ad).withOpacity(1),
                        color2: Color(0x7A918D),
                        text: 'Hello',
                        image: 'assets/Vector.png',
                      ),

                      //Container 2 :
                      SkillContainer(
                        color1: Color(0x6C978D).withOpacity(1),
                        color2: Color(0x92D1C3),
                        text: 'Hello',
                        image: 'assets/Vector.png',
                      ),

                      //Container 3 :
                      SkillContainer(
                        color1: Color(0xA1D79E).withOpacity(1),
                        color2: Color(0x84B082),
                        text: 'Hello',
                        image: 'assets/Vector.png',
                      ),
                      //Container 4 :
                      SkillContainer(
                        color1: Color(0x34433E).withOpacity(1),
                        color2: Color(0x93B1A7),
                        text: 'Hello',
                        image: 'assets/Vector.png',
                      ),

                      //Container 5 :
                      SkillContainer(
                        color1: Color(0x44A177).withOpacity(1),
                        color2: Color(0x5DD39E),
                        text: 'Hello',
                        image: 'assets/Vector.png',
                      ),

                      //Container 6 :
                      SkillContainer(
                        color1: Color(0xBCE784).withOpacity(1),
                        color2: Color(0x9BBE6D),
                        text: 'Hello',
                        image: 'assets/Vector.png',
                      ),
                    ].toList(),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  fixedSize: MaterialStateProperty.all(
                    Size(50, 50),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



//Color.fromARGB(0, 85, 0, 255).withOpacity(1),

// class SkillContainer extends StatelessWidget {
//   const SkillContainer({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Color(0x97B2AD).withOpacity(0.7),
//             Color(0x7A918D),
//           ],
//         ),
//       ),
//     );
//   }
// }



// Container(
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [
//                               Color.fromARGB(0, 85, 0, 255).withOpacity(1),
//                               Color(0x7A918D)
//                             ],
//                           ),
//                         ),
//                         //Inside Element
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: EdgeInsetsDirectional.only(
//                                   start: 10.0, top: 10),
//                               child: Text(
//                                 'Figma',
//                                 style: TextStyle(
//                                     fontSize: 35.0,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.white),
//                               ),
//                             ),
//                             SizedBox(
//                               height: height * 0.02,
//                               width: width * 0.03,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 100),
//                               child: Image.asset(
//                                 'assets/Figma svg.png',
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),