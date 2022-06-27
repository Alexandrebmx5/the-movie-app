import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:the_movie_app/commons/colors.dart';
import 'package:the_movie_app/screens/home/components/movie_tile.dart';
import 'package:the_movie_app/store/get_now_playing_store.dart';
import 'package:the_movie_app/store/get_popular_store.dart';

class HomeScreen extends StatelessWidget {

  final GetPopularStore getPopularStore = GetPopularStore();
  final GetNowPlayingStore getNowPlayingStore = GetNowPlayingStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MovieColor.kPrimaryColor,
      appBar: PreferredSize(
       preferredSize: Size.fromHeight(60),
       child: AppBar(
         backgroundColor: Colors.transparent,
         elevation: 0,
         title: Text(
             'The Movie',
             style: TextStyle(
               fontWeight: FontWeight.w600,
               color: MovieColor.kAccentColor,
               letterSpacing: 1.4,
             )
         ),
       )
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            heading(title: 'Filmes do momento'),
            Observer(builder: (_){

              if(getNowPlayingStore.loading)
                return Container(
                  height: 250,
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(MovieColor.kLightGrey),
                    ),
                  ),
                );

              if(getNowPlayingStore.error != null)
                return Container();

              return Container(
                padding: EdgeInsets.only(left: 5.0),
                height: 250,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: getNowPlayingStore.movieListNowPlaying.length,
                    itemBuilder: (_, index){
                      return MovieTile(getNowPlayingStore.movieListNowPlaying[index]);
                    }),
              );
            }),
            heading(title: 'Os Mais Populares'),
            Observer(builder: (_){

              if(getPopularStore.loading)
                return Container(
                  height: 250,
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(MovieColor.kLightGrey),
                    ),
                  ),
                );

              if(getPopularStore.error != null)
                return Container();

              return Container(
                padding: EdgeInsets.only(left: 5.0),
                height: 250,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: getPopularStore.movieListPopular.length,
                    itemBuilder: (_, index){
                      return MovieTile(getPopularStore.movieListPopular[index]);
                    }),
              );
            })
          ],
        ),
      ),
    );
  }

  Widget heading({String? title}) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, top: 13.0, bottom: 10.0),
      alignment: Alignment.centerLeft,
      child: Text(
        '$title',
        style: TextStyle(
          color: MovieColor.kLightGrey,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
