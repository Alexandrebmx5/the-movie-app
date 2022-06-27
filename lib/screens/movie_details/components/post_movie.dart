import 'package:flutter/material.dart';
import 'package:the_movie_app/models/movie_details.dart';
import 'package:the_movie_app/services/api/secret_api.dart';

class PostMovie extends StatelessWidget {

  PostMovie(this.movieDetails);

  final MovieDetails movieDetails;
  final SecretApi secretApi = SecretApi();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: double.infinity,
      padding: EdgeInsets.only(left: 5.0, right: 5.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: FadeInImage.assetNetwork(
            placeholder: 'assets/img.png',
            image: '${secretApi.kImageUrl}${movieDetails.posterPath}',
            fit: BoxFit.cover,
          )),
    );
  }
}
