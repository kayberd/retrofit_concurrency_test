import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_helper.g.dart';

@RestApi(baseUrl: "https://api-development.petleo.de/v1/appointment-management/branches/342/appointments/")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;
  @GET("/")
  Future<List<dynamic>> getTasks();
}

