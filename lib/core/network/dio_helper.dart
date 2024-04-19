import 'package:dio/dio.dart';

import 'api_constant.dart';
import 'dio_interceptor.dart';

class DioHelper {
  static Dio dio1 = Dio();
  static Dio dio2 = Dio();
  static init() {
    dio1 = Dio(
      BaseOptions(
        baseUrl: ApiConstance.baseUrlDoctor,
        receiveDataWhenStatusError: true,
      ),
    );
    dio1.interceptors.add(
      MyDioInterceptor(),
    );
    dio2 = Dio(
      BaseOptions(
        baseUrl: ApiConstance.baseUrlPatient,
        receiveDataWhenStatusError: true,
      ),
    );
    dio2.interceptors.add(
      MyDioInterceptor(),
    );
  }


  //doctor methods

  static Future<Response> postData(
      {required String endPoint,
      required Map<String, dynamic> data,
      
      String lang = 'en',
      String? token}) async {
    dio1.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    Response response = await dio1.post(endPoint, data: data);
    return response;
  }

  static Future<Response> getData(
      {required String endPoint, String lang = 'en', String? token}) async {
    dio1.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    Response response = await dio1.get(endPoint);
    return response;
  }

  static Future<Response> puttData(
      {required String endPoint,
      required Map<String, dynamic> data,
      String lang = 'en',
      String? token}) async {
    dio1.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    Response response = await dio1.put(endPoint, data: data);
    return response;
  }
  
  
 // patient methods
  
  
  static Future<Response> pathientpostData(
      {required String endPoint,
      required Map<String, dynamic> data,
      
      String lang = 'en',
      String? token}) async {
    dio2.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    Response response = await dio2.post(endPoint, data: data);
    return response;
  }

  static Future<Response> pathientgetData(
      {required String endPoint, String lang = 'en', String? token}) async {
    dio2.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    Response response = await dio2.get(endPoint);
    return response;
  }

  static Future<Response> pahtientputtData(
      {required String endPoint,
      required Map<String, dynamic> data,
      String lang = 'en',
      String? token}) async {
    dio2.options.headers = {
      'lang': lang,
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    Response response = await dio2.put(endPoint, data: data);
    return response;
  }


}