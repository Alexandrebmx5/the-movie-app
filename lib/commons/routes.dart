import 'package:flutter/material.dart';
import 'package:the_movie_app/models/movie.dart';
import 'package:the_movie_app/screens/home/home_screen.dart';
import 'package:the_movie_app/screens/movie_details/movie_details_screen.dart';

const String rootRoute = "/";
const String movieDetailsRoute = "movie_details_screen";

class RouterManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case movieDetailsRoute:
        return MaterialPageRoute(builder: (context) => MovieDetailsScreen(
          settings.arguments as Movie
        ));
      case rootRoute:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}