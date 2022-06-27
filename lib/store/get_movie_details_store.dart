import 'package:mobx/mobx.dart';
import 'package:the_movie_app/models/movie_details.dart';
import 'package:the_movie_app/services/api/api_service.dart';
import 'package:the_movie_app/services/api/custom_exception.dart';

part 'get_movie_details_store.g.dart';

class GetMovieDetailsStore = _GetMovieDetailsStore with _$GetMovieDetailsStore;

abstract class _GetMovieDetailsStore with Store {

  _GetMovieDetailsStore(){
    reaction((_) => idMovie != null, (_){
      _getMovieDetails();
    });
  }

  @observable
  String? idMovie;

  @action
  void setIdMovie(String value) => idMovie = value;

  @observable
  MovieDetails? movieDetails;

  @action
  void setMovieDetails(MovieDetails value) => movieDetails = value;

  @observable
  String? error;

  @observable
  bool loading = false;

  @action
  void setError(String value) => error = value;

  Future<void> _getMovieDetails() async {
    loading = true;

    try {
      final result = await ApiService().getMovieDetails(idMovie!);
      final movie = MovieDetails.fromMap(result);
      setMovieDetails(movie);
    } on MovieException catch (e){
      setError(e.message);
      print(e.message);
    }

    loading = false;
  }

  void refresh() => _getMovieDetails();

}