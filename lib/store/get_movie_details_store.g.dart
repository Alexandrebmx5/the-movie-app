// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movie_details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GetMovieDetailsStore on _GetMovieDetailsStore, Store {
  late final _$idMovieAtom =
      Atom(name: '_GetMovieDetailsStore.idMovie', context: context);

  @override
  String? get idMovie {
    _$idMovieAtom.reportRead();
    return super.idMovie;
  }

  @override
  set idMovie(String? value) {
    _$idMovieAtom.reportWrite(value, super.idMovie, () {
      super.idMovie = value;
    });
  }

  late final _$movieDetailsAtom =
      Atom(name: '_GetMovieDetailsStore.movieDetails', context: context);

  @override
  MovieDetails? get movieDetails {
    _$movieDetailsAtom.reportRead();
    return super.movieDetails;
  }

  @override
  set movieDetails(MovieDetails? value) {
    _$movieDetailsAtom.reportWrite(value, super.movieDetails, () {
      super.movieDetails = value;
    });
  }

  late final _$errorAtom =
      Atom(name: '_GetMovieDetailsStore.error', context: context);

  @override
  String? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$loadingAtom =
      Atom(name: '_GetMovieDetailsStore.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$_GetMovieDetailsStoreActionController =
      ActionController(name: '_GetMovieDetailsStore', context: context);

  @override
  void setIdMovie(String value) {
    final _$actionInfo = _$_GetMovieDetailsStoreActionController.startAction(
        name: '_GetMovieDetailsStore.setIdMovie');
    try {
      return super.setIdMovie(value);
    } finally {
      _$_GetMovieDetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMovieDetails(MovieDetails value) {
    final _$actionInfo = _$_GetMovieDetailsStoreActionController.startAction(
        name: '_GetMovieDetailsStore.setMovieDetails');
    try {
      return super.setMovieDetails(value);
    } finally {
      _$_GetMovieDetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_GetMovieDetailsStoreActionController.startAction(
        name: '_GetMovieDetailsStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_GetMovieDetailsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
idMovie: ${idMovie},
movieDetails: ${movieDetails},
error: ${error},
loading: ${loading}
    ''';
  }
}
