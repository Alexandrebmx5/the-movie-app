import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:the_movie_app/commons/colors.dart';
import 'package:the_movie_app/models/movie_details.dart';

class TitleMovie extends StatelessWidget {
  TitleMovie(this.movieDetails);

  final MovieDetails movieDetails;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 150.0,
          padding: EdgeInsets.only(left: 15.0),
          alignment: Alignment.centerLeft,
          child: Text(
            '${movieDetails.title}',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 11.0),
                alignment: Alignment.centerLeft,
                child: CircularPercentIndicator(
                  radius: 25,
                  lineWidth: 4.0,
                  animation: true,
                  percent: movieDetails.voteAverage! / 10,
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: MovieColor.kAccentColor,
                  center: Text(
                    '${(movieDetails.voteAverage! * 10).toStringAsFixed(0)} %',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
