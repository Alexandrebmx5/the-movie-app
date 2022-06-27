import 'package:flutter/material.dart';
import 'package:the_movie_app/commons/colors.dart';
import 'package:the_movie_app/models/movie_details.dart';

class OverviewMovie extends StatelessWidget {

  OverviewMovie(this.movieDetails);

  final MovieDetails movieDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15.0, top: 5.0),
          child: Text(
            'Sinopse',
            style: TextStyle(
              color: MovieColor.kAccentColor,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0, top: 5.0),
          child: Text(
            '${movieDetails.overview}',
            style: TextStyle(
              color: const Color(0xffF5F5F5),
              height: 1.3,
            ),
          ),
        ),
      ],
    );
  }
}
