// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/data.dart';
import 'package:futurehire/skills_page/bloc/skills_bloc.dart';
import 'package:futurehire/skills_page/ui/add_skills_page.dart';
import 'package:futurehire/skills_page/ui/skills_page_widget.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage();

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  void removeSkills(String fullSkills) {
    setState(() {
      skills.remove(fullSkills);
      print(skills);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5E4E2),
      body: BlocBuilder<SkillsBloc, SkillsState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(
                    'Skills',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),

                  //Search Box
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => AddSkillsPage()));
                    },
                    child: Container(
                      width: 250.w,
                      height: 44.h,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "What skill do you wanna add.....",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white60),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // skills

                  SizedBox(
                    height: height * 0.05,
                  ),

                  //   AD Section
                  sliders(context, state),

                  SizedBox(
                    height: height * 0.02,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'User Skills:',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 240.h,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 3 / 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20),
                        itemCount: skills.length,
                        itemBuilder: (context, index) {
                          final userSkills = skills[index];
                          return Card(
                            color: Color(0xFFA3c17C),
                            child: Stack(children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  userSkills,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.sp),
                                ),
                              ),
                              Positioned(
                                right: 2.w,
                                top: 16.h,
                                child: IconButton(
                                    onPressed: () {
                                      removeSkills(userSkills);
                                    },
                                    icon: Icon(
                                        Icons.remove_circle_outline_rounded)),
                              ),
                            ]),
                          );
                        }),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
