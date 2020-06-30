import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AuthInterceptorWrapper extends InterceptorsWrapper {

  @override
  Future onRequest(RequestOptions options) async {

    if (DotEnv().env['profile'] == 'dev') {
      print('########## Request Log ##########');
      print('url: ${options.uri}');
      print('method: ${options.method}');
      print('data: ${options.data}');
      print('headers: ${options.headers}');
    }
  }

  @override
  Future onResponse(Response response) async {
    if (DotEnv().env['profile'] == 'dev') {
      print('########## Response Log ##########');
      print('data: ${response.data}');
    }
  }

  @override
  Future onError(DioError err) async {
    print('error: ${err.response}');
    // Verificar se deu erro 403 ou 401 fazer o refresh do token
//    if(err.response?.statusCode == 403 || err.response?.statusCode == 401) {
//
//    }
    return err;
  }

}