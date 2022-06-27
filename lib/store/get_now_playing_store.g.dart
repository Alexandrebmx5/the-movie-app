// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_now_playing_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GetNowPlayingStore on _GetNowPlayingStore, Store {
  late final _$errorAtom =
      Atom(name: '_GetNowPlayingStore.error', context: context);

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
      Atom(name: '_GetNowPlayingStore.loading', context: context);

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

  late final _$_GetNowPlayingStoreActionController =
      ActionController(name: '_GetNowPlayingStore', context: context);

  @override
  void setMovieNowPlaying(List<Movie> forms) {
    final _$actionInfo = _$_GetNowPlayingStoreActionController.startAction(
        name: '_GetNowPlayingStore.setMovieNowPlaying');
    try {
      return super.setMovieNowPlaying(forms);
    } finally {
      _$_GetNowPlayingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_GetNowPlayingStoreActionController.startAction(
        name: '_GetNowPlayingStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_GetNowPlayingStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
error: ${error},
loading: ${loading}
    ''';
  }
}
