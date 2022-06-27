import 'package:mobx/mobx.dart';
import 'package:the_movie_app/models/movie.dart';
import 'package:the_movie_app/services/api/api_service.dart';
import 'package:the_movie_app/services/api/custom_exception.dart';

part 'get_now_playing_store.g.dart';

class GetNowPlayingStore = _GetNowPlayingStore with _$GetNowPlayingStore;

abstract class _GetNowPlayingStore with Store {

  _GetNowPlayingStore(){
    _getMovieNowPlaying();
  }

  ObservableList<Movie> movieListNowPlaying = ObservableList<Movie>();

  @action
  void setMovieNowPlaying(List<Movie> forms) {
    movieListNowPlaying.clear();
    movieListNowPlaying.addAll(forms);
  }

  @observable
  String? error;

  @observable
  bool loading = false;

  @action
  void setError(String value) => error = value;

  Future<void> _getMovieNowPlaying() async {
    loading = true;

    try {
      final result = await ApiService().getMovieNowPlaying();
      final movies = result["results"].map<Movie>((e) => Movie.fromMap(e)).toList();
      setMovieNowPlaying(movies);
    } on MovieException catch (e){
      setError(e.message);
      print(e.message);
    }

    loading = false;
  }

  void refresh() => _getMovieNowPlaying();

}