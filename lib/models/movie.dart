import 'dart:convert';

class Movie {

  int? id;
  int? voteCount;
  num? voteAverage;
  String? title;
  String? releaseDate;
  String? originalLanguage;
  String? originalTitle;
  List<dynamic>? genreIds;
  String? backdropPath;
  String? overview;
  String? posterPath;
  double? popularity;

  Movie({
      this.id,
      this.voteCount,
      this.voteAverage,
      this.title,
      this.releaseDate,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.backdropPath,
      this.overview,
      this.posterPath,
      this.popularity});

  factory Movie.fromJson(String str) =>
      Movie.fromMap(json.decode(str));

  factory Movie.fromMap(Map<String, dynamic> parsedJson) => Movie(
      id: parsedJson['id'],
      voteCount: parsedJson['vote_count'],
      voteAverage: parsedJson['vote_average'],
      title: parsedJson['title'],
      releaseDate: parsedJson['release_date'],
      originalLanguage: parsedJson['original_language'],
      originalTitle: parsedJson['original_title'],
      genreIds: parsedJson['genre_ids'],
      backdropPath: parsedJson['backdrop_path'],
      overview: parsedJson['overview'],
      posterPath: parsedJson['poster_path'],
      popularity: parsedJson['popularity'],
  );

  @override
  String toString() {
    return 'Movie{id: $id, voteCount: $voteCount, voteAverage: $voteAverage, title: $title, releaseDate: $releaseDate, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genreIds: $genreIds, backdropPath: $backdropPath, overview: $overview, posterPath: $posterPath, popularity: $popularity}';
  }


}