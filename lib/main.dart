import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_movie_app/commons/colors.dart';
import 'package:the_movie_app/commons/custom_animation.dart';
import 'package:the_movie_app/commons/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configLoading();
  runApp(MyApp());
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 1500)
    ..indicatorType = EasyLoadingIndicatorType.circle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.white
    ..backgroundColor = MovieColor.kPrimaryColor
    ..indicatorColor = Colors.white
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false
    ..customAnimation = CustomAnimation();
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Movie App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      builder: EasyLoading.init(),
      initialRoute: '/',
      onGenerateRoute: RouterManager.generateRoute,
    );
  }
}