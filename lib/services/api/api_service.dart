import 'package:dio/dio.dart';
import 'package:the_movie_app/services/api/custom_exception.dart';
import 'package:the_movie_app/services/api/secret_api.dart';

class ApiService {

  var dio = Dio();

  // GET MOVIE POPULAR
  Future getMoviePopular() async {

    var responseJson;
    try {
      Response response = await dio.get(
        SecretApi().kPopular,
      );

      responseJson = _response(response);

    } on DioError catch (e) {
      print(e);
      if (e.response != null) {
        if (e.response!.data['status_message'] != null)
          throw MovieException(
            e.response!.data['status_message'],
          );
        else
          throw MovieException(e.response!.data['error']);
      } else {
        throw MovieException(MESSAGE_GENERIC_ERROR);
      }
    }
    return responseJson;
  }

  // GET MOVIE NOW PLAYING
  Future getMovieNowPlaying() async {

    var responseJson;
    try {
      Response response = await dio.get(
        SecretApi().kNowPlaying,
      );

      responseJson = _response(response);

    } on DioError catch (e) {
      print(e);
      if (e.response != null) {
        if (e.response!.data['status_message'] != null)
          throw MovieException(
            e.response!.data['status_message'],
          );
        else
          throw MovieException(e.response!.data['error']);
      } else {
        throw MovieException(MESSAGE_GENERIC_ERROR);
      }
    }
    return responseJson;
  }

  // GET MOVIE DETAILS
  Future getMovieDetails(String movieId) async {

    var responseJson;
    try {
      Response response = await dio.get(
        SecretApi().getMovieDetails(movieId),
      );

      responseJson = _response(response);

    } on DioError catch (e) {
      print(e);
      if (e.response != null) {
        if (e.response!.data['status_message'] != null)
          throw MovieException(
            e.response!.data['status_message'],
          );
        else
          throw MovieException(e.response!.data['error']);
      } else {
        throw MovieException(MESSAGE_GENERIC_ERROR);
      }
    }
    return responseJson;
  }

  // response code
  dynamic _response(Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = response.data;
        return responseJson;
      case 201:
        var responseJson = response.data;
        return responseJson;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.data.toString());
      case 500:

      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

}