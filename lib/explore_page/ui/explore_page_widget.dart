import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../detail_view_page/ui/internship_detail_page.dart';


Widget carouselSliders(BuildContext context) {
  return Center(
    child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w),
        width: 264.w,
        height: 264.h,
        child: CarouselSlider(
          items: [
            _slidersContainer(
                "INTERSHIP",
                "Get Yourself the Dream Job you deserve on a few clicks",
                    () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) => DetailViewPage()));
                    },
                const Color.fromRGBO(170, 201, 175, 100)),
            _slidersContainer(
                "GIGS",
                "Get Yourself the Dream Job you deserve on a few clicks",
                    () {},
                const Color.fromRGBO(58, 57, 57, 100)),
            _slidersContainer(
                "JOB",
                "Get Yourself the Dream Job you deserve on a few clicks",
                    () {},
                const Color.fromRGBO(49, 126, 138, 100)),
          ],
          options: CarouselOptions(
              height: 352.h,
              initialPage: 1,
              enlargeCenterPage: true,
              aspectRatio: 16/9,
              enableInfiniteScroll: false),
        )),
  );
}

Widget _slidersContainer(
    String title, String subTitle, Function() tap, Color backgroundColor) {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 14.h),
        width: 216.w,
        height: 200.h,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),

            // Divider
            Container(
              width: 155.w,
              decoration: const BoxDecoration(
                color: Color(0xF5F5F5),
              ),
              child: const Divider(
                thickness: 0.5,
              ),
            ),

            SizedBox(
              height: 8.h,
            ),

            Text(subTitle,
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.white))
          ],
        ),
      ),
      GestureDetector(
        onTap: tap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: 216.w,
          height: 53.h,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Center(
            child: Text("Apply ",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      )
    ],
  );
}

Widget backImage(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 160.h,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/background-complete.png'),
        fit: BoxFit.fill,
      ),
    ),
    child: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Route.png'),
              )),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Character.png'),
              )),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomLeft,
                image: AssetImage('assets/rocks.png'),
              )),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomLeft,
                image: AssetImage('assets/Plants.png'),
              )),
        ),
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage('assets/Group 88.png'),
              )),
        )
      ],
    ),
  );
}
