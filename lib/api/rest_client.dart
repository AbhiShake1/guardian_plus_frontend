import 'dart:convert';

import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../core/constants/endpoints.dart';
import '../core/models/user_model/user_model.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  //auth:
  @POST(kUrlLogin)
  Future<UserModel?> login({
    @Field('uid') required String userId,
    @Field('password') required String password,
  });

  @GET(kUrlGetUser)
  Future<UserModel?> currentUser();

  @GET(kUrlLogout)
  Future<String?> logout();
}
