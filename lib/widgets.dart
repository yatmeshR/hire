// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'data.dart';

class LineOrLine extends StatelessWidget {
  const LineOrLine();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: width * 0.2546,
            height: height * 0.00123,
            color: Colors.black,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'OR',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: width * 0.2546,
            height: 1,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

class LoginPlateTextField extends StatelessWidget {
  const LoginPlateTextField({
    Key? key,
    required this.icon,
    required this.hintText,
    // required this.obscuretext
    required this.con,
  }) : super(key: key);

  final IconData icon;
  final String hintText;
  final con;
  // final bool obscuretext;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.0615,
      margin: EdgeInsets.only(left: width * 0.152, right: width * 0.152),
      decoration: BoxDecoration(
        color: Color(0xFFa5a7a6),
        borderRadius: BorderRadius.circular(width * 0.02),
      ),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: width * 0.050,
            ),
            Icon(
              icon,
              size: height * 0.036,
            ),
            SizedBox(
              width: width * 0.050,
            ),
            Expanded(
              child: TextField(
                controller: con,
                // obscureText: obscuretext,
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                  hintStyle: TextStyle(fontSize: height * 0.027),
                ),
                style: TextStyle(color: Colors.black), // Set text color
                cursorColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class LoginPlate extends StatelessWidget {
//   const LoginPlate({super.key, required this.icon, required this.text});

//   final IconData icon;
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height * 0.0615,
//       margin: EdgeInsets.only(left: width * 0.152, right: width * 0.152),
//       decoration: const BoxDecoration(color: Color(0xFFa5a7a6)),
//       child: Center(
//         child: Row(
//           children: [
//             SizedBox(
//               width: width * 0.050,
//             ),
//             Icon(
//               icon,
//               size: height * 0.036,
//             ),
//             SizedBox(
//               width: width * 0.050,
//             ),
//             Text(
//               text,
//               style: TextStyle(fontSize: height * 0.027),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class LoginPlate2 extends StatelessWidget {
  const LoginPlate2({ required this.icon, required this.text});

  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.061,
      margin: EdgeInsets.only(right: width * 0.043),
      decoration: const BoxDecoration(color: Color(0xFFa5a7a6)),
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: width * 0.050,
            ),
            Icon(
              icon,
              size: height * 0.036,
            ),
            SizedBox(
              width: width * 0.050,
            ),
            Text(
              text,
              style: TextStyle(fontSize: height * 0.027),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class LoginSphere extends StatelessWidget {
  LoginSphere({ required this.img, required this.text});
  String img, text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            img,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50.0,
            ),
          ),
        ),
      ],
    );
  }
}

class SignInWithGoogle extends StatelessWidget {
  const SignInWithGoogle();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.061,
      padding: EdgeInsets.only(left: width * 0.147, right: width * 0.147),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFCEDDE0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network(
                'http://pngimg.com/uploads/google/google_PNG19635.png',
                fit: BoxFit.cover),
            SizedBox(
              width: width * 0.076,
            ),
            const Text(
              'Sign-in with Google',
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}

//Edit skill container
class SkillContainer extends StatefulWidget {
  SkillContainer({
    required this.color1,
    required this.color2,
    required this.text,
    required this.image,
  });

  final Color color1;
  final Color color2;
  final String text;
  final String image;

  @override
  _SkillContainerState createState() => _SkillContainerState();
}

class _SkillContainerState extends State<SkillContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [widget.color1, widget.color2],
          ),
          border: isSelected
              ? Border.all(
                  color: Colors.blue, // You can change the border color
                  width: 2.0, // You can adjust the border width
                )
              : null,
        ),
        // Inside Element
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0), // Adjust padding as needed
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.text,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                widget.image, // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*

class SkillContainer extends StatelessWidget {
  SkillContainer(
      {required this.color1,
      required this.color2,
      required this.text,
      required this.image});
  final Color color1;
  final Color color2;
  final String text;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [color1, color2],
        ),
      ),
      //Inside Element
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 10.0, top: 10),
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            width: width * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 50.0),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              width: 20.0,
              height: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}


*/