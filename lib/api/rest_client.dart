import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../core/constants/endpoints.dart';
import '../core/models/assessment_model/assessment_model.dart';
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

  @PUT(kUrlUpdatePassword)
  Future<String?> updatePassword({@Field('password') required String password});

  //parent
  @GET(kUrlGetChildren)
  Future<String?> getChildren();

  @POST(kUrlGetChildSubjects)
  Future<String?> getChildSubjects({@Field('uid') required String userId});

  @POST(kUrlGetChildProgress)
  Future<String?> getChildProgress({@Field('uid') required String userId});

  //assessment
  @GET(kUrlAllAssessments)
  Future<List<AssessmentModel>?> getAssessments();
}
