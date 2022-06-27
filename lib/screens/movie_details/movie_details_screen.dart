import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:the_movie_app/commons/colors.dart';
import 'package:the_movie_app/models/movie.dart';
import 'package:the_movie_app/models/movie_details.dart';
import 'package:the_movie_app/screens/movie_details/components/gender_movie.dart';
import 'package:the_movie_app/screens/movie_details/components/post_movie.dart';
import 'package:the_movie_app/screens/movie_details/components/overview_movie.dart';
import 'package:the_movie_app/screens/movie_details/components/title_movie.dart';
import 'package:the_movie_app/store/get_movie_details_store.dart';

class MovieDetailsScreen extends StatelessWidget {

  MovieDetailsScreen(this.movie);

  final Movie? movie;
  final GetMovieDetailsStore getMovieDetailsStore = GetMovieDetailsStore();

  @override
  Widget build(BuildContext context) {

    getMovieDetailsStore.setIdMovie('${movie!.id}');

    return Scaffold(
      backgroundColor: MovieColor.kPrimaryColor,
      body: Observer(builder: (_){

        if(getMovieDetailsStore.loading)
          return Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(MovieColor.kLightGrey),
            ),
          );

        if(getMovieDetailsStore.error != null)
          return Container();

        MovieDetails? movieDetails = getMovieDetailsStore.movieDetails;
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Stack(
                children: [
                  PostMovie(movieDetails!),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 5, right: 20),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: FloatingActionButton(
                          backgroundColor: Colors.black,
                          elevation: 0,
                          onPressed: Navigator.of(context).pop,
                          child: Icon(Icons.clear, size: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 15.0),
              TitleMovie(movieDetails),
              SizedBox(height: 5),
              GenderMovie(movieDetails),
              SizedBox(height: 10.0),
              OverviewMovie(movieDetails),
              SizedBox(height: 15.0),
            ],
          ),
        );
      }),
    );
  }
}
