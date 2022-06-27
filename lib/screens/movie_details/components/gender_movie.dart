import 'package:flutter/material.dart';
import 'package:the_movie_app/commons/colors.dart';
import 'package:the_movie_app/models/movie_details.dart';

class GenderMovie extends StatelessWidget {
  
  GenderMovie(this.movieDetails);
  
  final MovieDetails movieDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 15.0, top: 5.0),
          child: Text(
            'Gênero',
            style: TextStyle(
              color: MovieColor.kAccentColor,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        Container(
          height: 20,
          child: ListView.builder(
            itemCount: movieDetails.genres!.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index){
              return Container(
                padding: EdgeInsets.only(left: 15.0, top: 5.0),
                child: Text(
                  '${movieDetails.genres![index]['name']}',
                  style: TextStyle(
                    color: const Color(0xffF5F5F5),
                    height: 1.3,
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
