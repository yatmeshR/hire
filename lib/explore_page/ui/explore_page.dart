import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/data.dart';
import 'package:futurehire/explore_page/ui/explore_page_widget.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage();

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(213, 228, 226, 100),
      backgroundColor: Color(0xFFD5E4E2),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //   Heading
            Container(
              padding: EdgeInsets.only(left: 25.w),
              margin: EdgeInsets.only(top: 50.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                          "Your",
                          style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)
                      ),
                      SizedBox(width: 6.w,),
                      Text(
                          "optiions",
                          style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 13.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.black)
                      ),

                    ],
                  ),
                ],
              ),
            ),






            SizedBox(height: 16.h ,),

            //   SubHeading
            Container(
              padding: EdgeInsets.only(left: 28.w),
              child: Text(
                "A few Clicks away",
                style: TextStyle(
                    fontFamily: "inter",
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 20.h ,),

            //   carousel
            carouselSliders(context),

            SizedBox(height: 10.h ,),

            //   Image and point
            backImage(context)
          ],
        ),
      ),


    );
  }
}
