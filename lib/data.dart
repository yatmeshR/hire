import 'package:flutter/material.dart';

List<String> skills = [];
List<String> allSkills = [];
String name = '';
String age = '';
List<Widget> displaySkills = [];
List<String> jobBoxColor = [];

int hired = 0, noapplied = 0, accepted = 0;

class Details {
  Details(
      {required this.role,
      required this.visibility,
      required this.name,
      required this.duration,
      required this.stipend,
      required this.color,
      required this.about,
      required this.req,
      required this.skillset,
      required this.desc,
      required this.id});
  String role, name, duration, stipend, about, desc;
  int color, id;
  bool visibility;
  List<String> req, skillset;
}

List<Details> internships = [];
List<Details> gigs = [];
List<Details> jobs = [];

List<int> applied = [];
List<int> applied2 = [];
List<int> applied3 = [];
List<String> appliedEmail = [];
List<String> applied2Email = [];
List<String> applied3Email = [];

double height = 0;
double width = 0;
