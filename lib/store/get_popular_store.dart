import 'package:mobx/mobx.dart';
import 'package:the_movie_app/models/movie.dart';
import 'package:the_movie_app/services/api/api_service.dart';
import 'package:the_movie_app/services/api/custom_exception.dart';

part 'get_popular_store.g.dart';

class GetPopularStore = _GetPopularStore with _$GetPopularStore;

abstract class _GetPopularStore with Store {

  _GetPopularStore(){
     _getMoviePopular();
  }

  ObservableList<Movie> movieListPopular = ObservableList<Movie>();

  @action
  void setMoviePopular(List<Movie> forms) {
    movieListPopular.clear();
    movieListPopular.addAll(forms);
  }

  @observable
  String? error;

  @observable
  bool loading = false;

  @action
  void setError(String value) => error = value;

  Future<void> _getMoviePopular() async {
    loading = true;

    try {
      final result = await ApiService().getMoviePopular();
      final movies = result["results"].map<Movie>((e) => Movie.fromMap(e)).toList();
      setMoviePopular(movies);
    } on MovieException catch (e){
      setError(e.message);
      print(e.message);
    }

    loading = false;
  }

  void refresh() => _getMoviePopular();

}