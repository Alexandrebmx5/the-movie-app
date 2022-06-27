import 'dart:convert';

class MovieDetails {

  int? id;
  String? backdropPath;
  int? budget;
  List<dynamic>? genres;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  List<dynamic>? productionCompanies;
  String? releaseDate;
  int? revenue;
  String? tagline;
  String? title;
  double? voteAverage;
  int? voteCount;
  int? runtime;
  String? firstAirDate;
  String? lastAirDate;
  String? name;
  String? originalLanguage;
  int? numberOfEpisodes;
  int? numberOfSeasons;
  List<dynamic>? originCountry;
  List<dynamic>? seasons;
  List<dynamic>? episodeRunTime;

  MovieDetails({
      this.id,
      this.backdropPath,
      this.budget,
      this.genres,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.productionCompanies,
      this.releaseDate,
      this.revenue,
      this.tagline,
      this.title,
      this.voteAverage,
      this.voteCount,
      this.runtime,
      this.firstAirDate,
      this.lastAirDate,
      this.name,
      this.originalLanguage,
      this.numberOfEpisodes,
      this.numberOfSeasons,
      this.originCountry,
      this.seasons,
      this.episodeRunTime});

  factory MovieDetails.fromJson(String str) =>
      MovieDetails.fromMap(json.decode(str));

  factory MovieDetails.fromMap(Map<String, dynamic> parsedJson) => MovieDetails(
    id: parsedJson['id'],
    voteCount: parsedJson['vote_count'],
    voteAverage: parsedJson['vote_average'],
    title: parsedJson['title'],
    releaseDate: parsedJson['release_date'],
    originalLanguage: parsedJson['original_language'],
    originalTitle: parsedJson['original_title'],
    backdropPath: parsedJson['backdrop_path'],
    overview: parsedJson['overview'],
    posterPath: parsedJson['poster_path'],
    popularity: parsedJson['popularity'],
    budget: parsedJson['budget'],
    genres: parsedJson['genres'],
    productionCompanies: parsedJson['production_companies'],
    revenue: parsedJson['revenue'],
    tagline: parsedJson['tagline'],
    firstAirDate: parsedJson['first_air_date'],
    lastAirDate: parsedJson['last_air_date'] ?? 'not available',
    name: parsedJson['name'],
    numberOfEpisodes: parsedJson['number_of_episodes'] ?? 0,
    numberOfSeasons: parsedJson['number_of_seasons'] ?? 0,
    originCountry: parsedJson['origin_country'],
    runtime: parsedJson['runtime'],
    seasons: parsedJson['seasons'],
    episodeRunTime: parsedJson['episode_run_time'] ?? ['N/A'],
  );

  @override
  String toString() {
    return 'MovieDetails{id: $id, backdropPath: $backdropPath, budget: $budget, genres: $genres, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, releaseDate: $releaseDate, revenue: $revenue, tagline: $tagline, title: $title, voteAverage: $voteAverage, voteCount: $voteCount, runtime: $runtime, firstAirDate: $firstAirDate, lastAirDate: $lastAirDate, name: $name, originalLanguage: $originalLanguage, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, originCountry: $originCountry, seasons: $seasons, episodeRunTime: $episodeRunTime}';
  }
}