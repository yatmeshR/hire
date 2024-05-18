import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/data.dart';

Widget cards(
  String image,
  String role,
  String name,
  String money,
  String location,
  String skill1,
  String skill2,
  String skill3,
) {
  return Container(
    margin: EdgeInsets.only(top: 25, bottom: 25, left: 25),
    width: width * 0.6366,
    height: 115,
    decoration: BoxDecoration(
        color: Color.fromRGBO(235, 249, 247, 1),
        borderRadius: BorderRadius.all(Radius.circular(20))),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: height * 0.0492,
                child: Image.asset("assets/${image}"),
              ),
              SizedBox(
                width: width * 0.025,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    role,
                    style: TextStyle(
                        fontSize: height * 0.019, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: height * 0.0123, fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: height * 0.0123,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Color.fromRGBO(184, 195, 214, 1),
                borderRadius: BorderRadius.circular(10.0),
                elevation: height * 0.0123,
                child: Container(
                  height: height * 0.022,
                  width: width * 0.152,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                      child: Text(
                    skill1,
                    style:
                        TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Material(
                color: Color.fromRGBO(184, 195, 214, 1),
                borderRadius: BorderRadius.circular(10.0),
                elevation: height * 0.0123,
                child: Container(
                  height: height * 0.022,
                  width: width * 0.152,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                      child: Text(
                    skill2,
                    style:
                        TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              Material(
                color: Color.fromRGBO(184, 195, 214, 1),
                borderRadius: BorderRadius.circular(10.0),
                elevation: height * 0.0123,
                child: Container(
                  height: height * 0.022,
                  width: width * 0.152,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                      child: Text(
                    skill3,
                    style:
                        TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.0135,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '₹${money}/year',
                style: TextStyle(
                    fontSize: height * 0.0123, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    size: height * 0.0184,
                  ),
                  Text(
                    location,
                    style: TextStyle(
                        fontSize: height * 0.0123, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}



Widget heading( String inputText
    ) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      width: 66.w,
      height: 164.h,
      margin: EdgeInsets.only(right: 327),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromRGBO(146, 209, 195, 1),
      ),
      child: Image.asset("assets/${inputText}.png",
      ),
    ),
  );
}


