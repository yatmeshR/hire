import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/BottomBar.dart';
import 'package:futurehire/data.dart';

class AddSkillsPage extends StatefulWidget {
  const AddSkillsPage();

  @override
  State<AddSkillsPage> createState() => _AddSkillsPageState();
}

class _AddSkillsPageState extends State<AddSkillsPage> {
  final searchController = TextEditingController();

  List<String> dispaly_list = List.from(allSkills);

  // Filtering skills method
  void filterSkills(String value) {
    // Filter skills based on the query

    setState(() {
      dispaly_list = allSkills
          .where(
              (element) => element.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  // add skills
  void addSkills(String skill) {
    setState(() {
      skills.add(skill);
    });

    showDialog(
        context: context,
        builder: (builder) => AlertDialog(
              title: Text("Added Sucessfully"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5E4E2),
      body: Container(
        padding: EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height * 0.09,
            ),
            Text(
              'Add Your Skills',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.02,
            ),

            // User can add their skills from list
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
                      controller: searchController,
                      cursorColor: Colors.white,
                      onChanged: (value) {
                        filterSkills(value);
                      },
                      decoration: InputDecoration(
                        hintText: 'Search Skill...',
                        hintStyle: TextStyle(color: Colors.white60),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: dispaly_list.length,
                itemBuilder: (context, index) {
                  final skill = dispaly_list[index];
                  // final isSkillSelected = selectedSkills.contains(skill);
                  if (!skills.contains(skill)) {
                    return Card(
                      color: Color(0xFFA3c17C),
                      elevation: 1,
                      shadowColor: Colors.grey,
                      child: ListTile(
                        title: Text(
                          skill,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 16.sp),
                        ),
                        trailing: IconButton(
                            onPressed: () {
                              addSkills(skill);
                            },
                            icon: Icon(Icons.add)),
                      ),
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
            Divider(
              thickness: 2,
              color: Color(0xFFA3c17C),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => BottomBar(
                                  si: 1,
                                )));
                  },
                  child: Container(
                    margin: EdgeInsets.all(14),
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xFFA3c17C), width: 2),
                    ),
                    child: Center(
                      child: Text(
                        "Done",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFA3c17C)),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
