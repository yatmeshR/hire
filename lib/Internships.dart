import 'package:flutter/material.dart';
import 'package:futurehire/homepage.dart';
import 'data.dart';
import 'widgets.dart';
import 'internDetails.dart';

class Internships extends StatefulWidget {
  Internships();

  @override
  State<Internships> createState() => _InternshipsState();
}

class _InternshipsState extends State<Internships> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFD9E7E5),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LoginSphere(
                img: 'assets/internshipBanner.png',
                text: '',
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available Internships',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text('(Based on your skills)'),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    for (int i = 0; i < internships.length; i++)
                      // if (!applied.contains(internships[i].id) &&
                      //     skills.any((element) =>
                      //         internships[i].skillset.contains(element)))
                      if (skills.any((element) =>
                          internships[i].skillset.contains(element)))
                        // if (!applied.contains(internships[i].id))
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InternDetails(
                                            type: 0,
                                            id: internships[i].id,
                                            skillset: internships[i].skillset,
                                            req: internships[i].req,
                                            about: internships[i].about,
                                            duration: internships[i].duration,
                                            name: internships[i].name,
                                            money: internships[i].stipend,
                                            location: "Banglore, India",
                                            role: internships[i].role,
                                            decs: internships[i].desc,
                                          )),
                                ).then((value) {
                                  setState(() {});
                                });
                              },
                              child: JobBox(
                                id: i + 1,
                                role: internships[i].role,
                                req: internships[i].req,
                                company: internships[i].name,
                                location: 'Work From Home',
                                money: internships[i].stipend,
                                about: internships[i].about,
                                duration: internships[i].duration,
                                s1: internships[i].skillset[0],
                                s2: internships[i].skillset[1],
                                s3: internships[i].skillset[2],
                                desc: internships[i].desc,
                                colour: Color(internships[i].color),
                              ),
                            ),
                            SizedBox(
                              height: height * 0.05,
                            )
                          ],
                        )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ViewInternshipBox extends StatelessWidget {
//   ViewInternshipBox(
//       {super.key,
//       required this.img,
//       required this.s1,
//       required this.s2,
//       required this.s3,
//       required this.role,
//       required this.company,
//       required this.money,
//       required this.location,
//       required this.colour,
//       required this.desc,
//       required this.req,
//       required this.about,
//       required this.duration,
//       required this.name,
//       required this.id});
//   String img, name, money, location, role, desc;
//   final company, colour, s1, s2, s3, about, duration, id;
//   List<String> req;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => InternDetails(
//                       type: 0,
//                       id: id,
//                       skillset: [s1, s2, s3],
//                       req: req,
//                       about: about,
//                       duration: duration,
//                       name: name,
//                       money: money,
//                       location: location,
//                       role: role,
//                       decs: desc)),
//             );
//           },
//           child: Container(
//             width: double.infinity, // Set the width to the entire screen width
//             child: Container(
//               padding: EdgeInsets.only(right: 10.0),
//               height: height * 0.1,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(20.0),
//                   bottomRight: Radius.circular(20.0),
//                 ),
//               ),
//               child: Row(
//                 children: [
//                   ConstrainedBox(
//                     constraints: BoxConstraints(
//                       maxWidth:
//                           width * 0.2, // Adjust the maximum width for the image
//                     ),
//                     child: Image.asset(img),
//                   ),
//                   SizedBox(
//                       width:
//                           10.0), // Adjust the spacing between the image and text
//                   Expanded(
//                     child: Container(
//                       padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 name,
//                                 style: TextStyle(
//                                     fontSize: 20.0,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               Text(
//                                 '($role)',
//                                 style: TextStyle(fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.money,
//                                 size: 14.0,
//                               ),
//                               Text(
//                                 'Rs.$money per month',
//                                 style: TextStyle(
//                                     fontSize: 12.0,
//                                     fontWeight: FontWeight.bold),
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.location_pin,
//                                 size: 14.0,
//                               ),
//                               Text(location,
//                                   style: TextStyle(
//                                       fontSize: 12.0,
//                                       fontWeight: FontWeight.bold))
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: height * 0.05,
//         )
//       ],
//     );
//   }
// }
