import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/skills_page/bloc/skills_bloc.dart';

Widget sliders(BuildContext context, SkillsState state) {
  return Column(
    children: [
      Container(
        width: 324.w,
        height: 160.h,
        child: PageView(
          onPageChanged: (value) {
            context.read<SkillsBloc>().add(SkillsPageDots(value));
          },
          children: [
            _slidersContainer('assets/ad1.png'),
            _slidersContainer('assets/ad1.png'),
            _slidersContainer('assets/ad1.png'),
          ],
        ),
      ),
      SizedBox(height: 6.h,),
      Container(
        child: DotsIndicator(
          dotsCount: 3,
          position: state.index,
          decorator: DotsDecorator(
            color: Colors.grey,
            activeColor: Colors.blue,
            size: Size.square(5),
            activeSize: Size(
              17,
              5,
            ),
            activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
      )
    ],
  );
}

// slider widget
Widget _slidersContainer(String imagepath) {
  return Container(
    margin: EdgeInsets.only(left: 8.w),
    width: 324.w,
    height: 160.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20.h)),
      image: DecorationImage(fit: BoxFit.fill, image: AssetImage(imagepath)),
    ),
  );
}




// SizedBox(
// height: 220,
// child: ListView.builder(
// itemCount: allSkills.length,
// itemBuilder: (context, index) {
// final skill = allSkills[index];
// final isSkillSelected = selectedSkills.contains(skill);
//
// return ListTile(
// title: Text(skill),
// onTap: () {
// setState(() {
// if (isSkillSelected) {
// selectedSkills.remove(skill);
// } else {
// selectedSkills.add(skill);
// }
// });
// },
// tileColor:
// isSkillSelected ? Colors.blue.withOpacity(0.3) : null,
// );
// },
// ),
// ),



// Browse Skills :
// Text(
//   'Browse Skills',
//   style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
// ),
// SizedBox(
//   height: height * 0.01,
// ),

// Grid of options :
// SingleChildScrollView(
//   child: Container(
//     color: Colors.white10,
//     height: height * 0.45,
//     width: double.infinity,
//     child: GridView.count(
//       crossAxisCount: 2,
//       crossAxisSpacing: 20,
//       mainAxisSpacing: 20,
//       children: [
//         //Containers of the list
//
//         //Container 1 :
//         SkillContainer(
//           color1: Color(0x0097b2ad).withOpacity(1),
//           color2: Color(0x7A918D),
//           text: 'Tailwind',
//           image: 'assets/Vector.png',
//         ),
//
//         //Container 2 :
//         SkillContainer(
//           color1: Color(0x6C978D).withOpacity(1),
//           color2: Color(0x92D1C3),
//           text: 'Flutter',
//           image: 'assets/flutter_icon.png',
//         ),
//
//         //Container 3 :
//         SkillContainer(
//           color1: Color(0xA1D79E).withOpacity(1),
//           color2: Color(0x84B082),
//           text: 'C++',
//           image: 'assets/cpp_icon.png',
//         ),
//         //Container 4 :
//         SkillContainer(
//           color1: Color(0x34433E).withOpacity(1),
//           color2: Color(0x93B1A7),
//           text: 'Figma',
//           image: 'assets/figma_icon.png',
//         ),
//
//         //Container 5 :
//         SkillContainer(
//           color1: Color(0x44A177).withOpacity(1),
//           color2: Color(0x5DD39E),
//           text: 'Python',
//           image: 'assets/pyhton_icon.png',
//         ),
//
//         //Container 6 :
//         SkillContainer(
//           color1: Color(0xBCE784).withOpacity(1),
//           color2: Color(0x9BBE6D),
//           text: 'Java',
//           image: 'assets/java_icon.png',
//         ),
//       ].toList(),
//     ),
//   ),
// ),


// Container(
// width: 250,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15.0),
// color: Color(0xFFA3c17C),
// ),
// child: Row(
// children: <Widget>[
// Padding(
// padding: EdgeInsets.all(8.0),
// child: Icon(
// Icons.search,
// color: Colors.white,
// ),
// ),
// Expanded(
// child: TextField(
// controller: searchController,
// cursorColor: Colors.white,
// onChanged: (query) {
// filterSkills(query);
// },
// decoration: InputDecoration(
// hintText: 'Search Skill',
// hintStyle: TextStyle(color: Colors.white60),
// border: InputBorder.none,
// ),
// ),
// ),
//
// ],
// ),
// ),