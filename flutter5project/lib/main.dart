import 'package:coching_app/argument/course_argument.dart';
import 'package:coching_app/utils/navigation.dart';
import 'package:coching_app/utils/route_name.dart';
import 'package:coching_app/view/detail/course_details.dart';
import 'package:coching_app/view/home/home_Screen.dart';
import 'package:coching_app/view/intro_screen/intro_screen.dart';
import 'package:coching_app/view/shopping/shopping_cart_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: AppNavigation.navigatorKey,
      routes: {
        RouteName.intro: (context) => const IntroScreen(),
        RouteName.home: (context) => const HomeScreen(),
        RouteName.shoppingCartScreen: (context) => ShoppingCartScreen(),
      },
      initialRoute: RouteName.courseDetails,
      onGenerateRoute: (settings) {
        if (settings.name == RouteName.courseDetails) {
          final aurg = settings.arguments as CourseArgument;
          return MaterialPageRoute(
              builder: (context) => CourseDetails(course: aurg.course));
        }
      },
    );
  }
}
