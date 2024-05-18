import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futurehire/skills.dart';
import 'package:futurehire/skills_page/bloc/skills_bloc.dart';
import 'login.dart';
import 'data.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //     overlays: [SystemUiOverlay.bottom]);

  // CheckData();
  // print('---------------------------------');
  // List<List<String>> valuesList = options.values.toList();
  // print(valuesList[1]);
  runApp(ScreenUtilInit(builder: (context, child) {
    return BlocProvider(
      create: (context) => SkillsBloc(),
      child: MaterialApp(
        // theme: ThemeData(
        //   scaffoldBackgroundColor: Color(0xFFE8E8E8),
        // ),
        debugShowCheckedModeBanner: false,
        home: SizedBox(
          height: 500.0,
          width: 500.0,
          child: AnimatedSplashScreen(
            backgroundColor: Colors.white,
            splash: Image.asset(
              'assets/logo.jpeg', // Replace with the path to your JPEG image
              width: 500.0,
              height: 500.0,
              // You can customize the color if needed
            ),
            nextScreen: MyApp(),
            splashTransition: SplashTransition.fadeTransition,
            curve: Curves.easeInExpo,
            animationDuration: Duration(seconds: 1, milliseconds: 500),
          ),
        ),
      ),
    );
  }));
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print('height: ');
    print(height);
    print('w');
    print(width); 
    // return Login();
    return Login();

    // return MaterialApp(
    //   theme: ThemeData.dark().copyWith(
    //     primaryColor: const Color(0xFF0A0E21),
    //     scaffoldBackgroundColor: const Color(0xFF0A0E21),
    //   ),
    //   home: Login(),
    // );
  }
}
