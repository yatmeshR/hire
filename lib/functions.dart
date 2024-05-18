import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:futurehire/BottomBar.dart';
import 'data.dart';
import 'homepage.dart';

void LoginFunction(String email, String pass, BuildContext context) async {
  UserCredential userCredential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: pass,
  );
  Navigator.pushReplacement<void, void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => BottomBar(
        si: 0,
      ),
    ),
  );
}

// Future<int> fetchSkillsFromDatabase() async {
//   User? user = FirebaseAuth.instance.currentUser;
//   String uid = user!.uid.toString();
//   final ref = FirebaseDatabase.instance.ref();
//   print('yaha aayaaaa---');
//   final snapshot = await ref.child('users/$uid').get();
//   if (snapshot.exists) {
//     Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
//     for (int i = 0; i < values['skills'].length; i++) {
//       skills.add(values['skills'][i].toString());
//     }
//     if (values['applied'] != null) {
//       for (int i = 0; i < values['applied'].length; i++) {
//         applied.add(values['applied'][i]);
//       }
//     }
//     if (values['applied2'] != null) {
//       for (int i = 0; i < values['applied2'].length; i++) {
//         applied2.add(values['applied2'][i]);
//       }
//     }
//     if (values['applied3'] != null) {
//       for (int i = 0; i < values['applied3'].length; i++) {
//         applied3.add(values['applied3'][i]);
//       }
//     }
//     name = values['name'];
//     age = values['age'];
//     noapplied = values['noapplied'];
//     accepted = values['accepted'];
//     hired = values['hired'];
//     print(values['skills']);
//   } else {
//     print('No data available.');
//   }
//   return 0;
// }

// Future<int> fetchInternships() async {
//   final ref = FirebaseDatabase.instance.ref();
//   final snapshot3 = await ref.child('allSkills').get();
//   if (snapshot3.exists) {
//     Map<dynamic, dynamic> values2 = snapshot3.value as Map<dynamic, dynamic>;
//     for (int i = 0; i < values2['allSkills'].length; i++) {
//       allSkills.add(values2['allSkills'][i].toString());
//     }
//     print(allSkills);
//   }
//   final snapshot2 = await ref.child('count').get();
//   int c = 1;
//   if (snapshot2.exists) {
//     Map<dynamic, dynamic> cc = snapshot2.value as Map<dynamic, dynamic>;
//     c = cc['count'];
//   }
//   for (int i = 1; i <= c; i++) {
//     final snapshot = await ref.child('internships/$i').get();
//     if (snapshot.exists) {
//       Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
//       internships.add(Details(
//           about: values['about'],
//           id: values['id'],
//           req: List<String>.from(values['requirements']),
//           skillset: List<String>.from(values['skillset']),
//           color: values['color'],
//           visibility: values['visibility'],
//           role: values['role'],
//           name: values['name'],
//           duration: values['duration'],
//           stipend: values['stipend'],
//           desc: values['desc']));
//     }
//   }
//   for (int i = 1; i <= c; i++) {
//     final snapshot = await ref.child('gigs/$i').get();
//     if (snapshot.exists) {
//       Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
//       gigs.add(Details(
//           about: values['about'],
//           id: values['id'],
//           req: List<String>.from(values['requirements']),
//           skillset: List<String>.from(values['skillset']),
//           color: values['color'],
//           visibility: values['visibility'],
//           role: values['role'],
//           name: values['name'],
//           duration: values['duration'],
//           stipend: values['stipend'],
//           desc: values['desc']));
//     }
//   }
//   print(internships);
//   print('ho gaya');
//   return 0;
// }

Future<void> fetchData() async {
  await Future.wait([fetchSkillsFromDatabase(), fetchInternships()]);
  // The code here will be executed after both functions complete.
}

Future<int> fetchSkillsFromDatabase() async {
  User? user = FirebaseAuth.instance.currentUser;
  String uid = user!.uid.toString();
  final ref = FirebaseDatabase.instance.ref();
  print('yaha aayaaaa---');

  final snapshot = await ref.child('users/$uid').get();
  if (snapshot.exists) {
    Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;

    for (int i = 0; i < values['skills'].length; i++) {
      skills.add(values['skills'][i].toString());
    }

    if (values['applied'] != null) {
      for (int i = 0; i < values['applied'].length; i++) {
        applied.add(values['applied'][i]);
      }
    }
    if (values['applied2'] != null) {
      for (int i = 0; i < values['applied2'].length; i++) {
        applied2.add(values['applied2'][i]);
      }
    }
    if (values['applied3'] != null) {
      for (int i = 0; i < values['applied3'].length; i++) {
        applied3.add(values['applied3'][i]);
      }
    }
    name = values['name'];
    age = values['age'];
    noapplied = values['noapplied'];
    accepted = values['accepted'];
    hired = values['hired'];
    // ... (similar updates for applied2, applied3, name, age, noapplied, accepted, hired)

    print(values['skills']);
  } else {
    print('No data available.');
  }

  return 0;
}

Future<int> fetchInternships() async {
  final ref = FirebaseDatabase.instance.ref();

  final snapshot3 = await ref.child('allSkills').get();
  if (snapshot3.exists) {
    Map<dynamic, dynamic> values2 = snapshot3.value as Map<dynamic, dynamic>;

    for (int i = 0; i < values2['allSkills'].length; i++) {
      allSkills.add(values2['allSkills'][i].toString());
    }

    print(allSkills);
  }

  final snapshot2 = await ref.child('count').get();
  int c = 1;
  if (snapshot2.exists) {
    Map<dynamic, dynamic> cc = snapshot2.value as Map<dynamic, dynamic>;
    c = cc['count'];
  }

  // Fetch internships and gigs in parallel using Future.wait
  final List<Future<void>> futures = [];

  for (int i = 1; i <= c; i++) {
    futures.add(Future(() async {
      final snapshot = await ref.child('internships/$i').get();
      if (snapshot.exists) {
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        internships.add(Details(
            about: values['about'],
            id: values['id'],
            req: List<String>.from(values['requirements']),
            skillset: List<String>.from(values['skillset']),
            color: values['color'],
            visibility: values['visibility'],
            role: values['role'],
            name: values['name'],
            duration: values['duration'],
            stipend: values['stipend'],
            desc: values['desc']));
      }
    }));
  }

  for (int i = 1; i <= c; i++) {
    futures.add(Future(() async {
      final snapshot = await ref.child('gigs/$i').get();
      if (snapshot.exists) {
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        gigs.add(Details(
            about: values['about'],
            id: values['id'],
            req: List<String>.from(values['requirements']),
            skillset: List<String>.from(values['skillset']),
            color: values['color'],
            visibility: values['visibility'],
            role: values['role'],
            name: values['name'],
            duration: values['duration'],
            stipend: values['stipend'],
            desc: values['desc']));
      }
    }));
  }

  // Wait for all futures to complete
  await Future.wait(futures);

  print(internships);
  print('ho gaya');
  return 0;
}
