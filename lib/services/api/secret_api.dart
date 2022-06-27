class SecretApi {

  late String keyApi = '7c73cbcba1e7aea5ede537b7b2d17c5e';

  late String kImageUrl = 'https://image.tmdb.org/t/p/w500';
  late String kConfigImage = 'https://api.themoviedb.org/3/configuration?api_key=$keyApi';
  late String kPopular = 'https://api.themoviedb.org/3/movie/popular?api_key=$keyApi&language=en-US&page=';
  late String kNowPlaying = 'https://api.themoviedb.org/3/movie/now_playing?api_key=$keyApi';

  String getMovieDetails(String movieId) {
    return 'https://api.themoviedb.org/3/movie/$movieId?api_key=$keyApi&language=pt-BR';
  }
}

const String MESSAGE_GENERIC_ERROR = 'Desculpe encontramos um problema';