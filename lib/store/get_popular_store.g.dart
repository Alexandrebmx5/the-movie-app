// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_popular_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GetPopularStore on _GetPopularStore, Store {
  late final _$errorAtom =
      Atom(name: '_GetPopularStore.error', context: context);

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
      Atom(name: '_GetPopularStore.loading', context: context);

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

  late final _$_GetPopularStoreActionController =
      ActionController(name: '_GetPopularStore', context: context);

  @override
  void setMoviePopular(List<Movie> forms) {
    final _$actionInfo = _$_GetPopularStoreActionController.startAction(
        name: '_GetPopularStore.setMoviePopular');
    try {
      return super.setMoviePopular(forms);
    } finally {
      _$_GetPopularStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_GetPopularStoreActionController.startAction(
        name: '_GetPopularStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_GetPopularStoreActionController.endAction(_$actionInfo);
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
