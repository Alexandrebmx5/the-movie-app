import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:the_movie_app/commons/colors.dart';
import 'package:the_movie_app/commons/routes.dart';
import 'package:the_movie_app/models/movie.dart';
import 'package:the_movie_app/services/api/secret_api.dart';

class MovieTile extends StatelessWidget {

  MovieTile(this.movie);

  final Movie movie;
  final SecretApi secretApi = SecretApi();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(movieDetailsRoute, arguments: movie);
      },
      child: Container(
        height: 220.0,
        padding: EdgeInsets.only(left: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: CachedNetworkImage(
                  imageUrl: '${secretApi.kImageUrl}${movie.posterPath}',
                  placeholder: (context, url) {
                    return Container(
                      height: 200.0,
                      width: 140.0,
                      decoration: BoxDecoration(
                        color: MovieColor.kDarkBlue2,
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0)),
                      ),
                    );
                  },
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: 120.0,
              child: Text(
                '${movie.title}',
                style: TextStyle(
                  color: MovieColor.kLightGrey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
