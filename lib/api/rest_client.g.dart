// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserModel?> login({required userId, required password}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'uid': userId, 'password': password};
    final _result = await _dio.fetch<String>(_setStreamType<UserModel>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(
                _dio.options, 'https://guardian-plus.herokuapp.com/api=auth/signin/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : UserModel.fromJson(jsonDecode(_result.data!));
    return value;
  }

  @override
  Future<UserModel?> currentUser() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<String?>(_setStreamType<UserModel>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options,
                'https://guardian-plus.herokuapp.com/api=auth/current_user/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        _result.data == null ? null : UserModel.fromJson(jsonDecode(_result.data!));
    return value;
  }

  @override
  Future<String?> logout() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<String>(_setStreamType<String>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(
            _dio.options, 'https://guardian-plus.herokuapp.com/api=auth/signout/',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<String?> updatePassword({required password}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'password': password};
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'PUT', headers: _headers, extra: _extra)
            .compose(_dio.options,
                'https://guardian-plus.herokuapp.com/api=auth/update_password/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<String?> getChildren() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options,
                'https://guardian-plus.herokuapp.com/api=parent/get_children/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<String?> getChildSubjects({required userId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'uid': userId};
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options,
                'https://guardian-plus.herokuapp.com/api=parent/get_child_subjects/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<String?> getChildProgress({required userId}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'uid': userId};
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options,
                'https://guardian-plus.herokuapp.com/api=child/get_child_progress/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<List<AssessmentModel?>?> getAssessments() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<String>(_setStreamType<String?>(
        Options(method: 'GET', headers: _headers, extra: _extra)
            .compose(_dio.options,
                'https://guardian-plus.herokuapp.com/api=assessments/get_all/',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final List<AssessmentModel?> value = [];
    (jsonDecode(_result.data ?? '') ?? '').forEach(
        (i) => value.add(AssessmentModel.fromJson(jsonDecode(jsonEncode(i)))));
    return value;
  }

  @override
  Future<List<NoticeModel?>?> getNotices() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<String>(_setStreamType<String>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(
            _dio.options, 'https://guardian-plus.herokuapp.com/api=notice/get_all/',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final List<NoticeModel?> value = [];
    (jsonDecode(_result.data ?? '') ?? '')
        .forEach((i) => value.add(NoticeModel.fromJson(jsonDecode(jsonEncode(i)))));
    return value;
  }

  @override
  Future<String?> postFeedback(String title, String description) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'title': title, 'description': description};
    final _result = await _dio.fetch<String>(_setStreamType<String>(Options(
            method: 'POST', headers: _headers, extra: _extra)
        .compose(
            _dio.options, 'https://guardian-plus.herokuapp.com/api=feedback/post/',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  @override
  Future<String?> getRoutine(String uid) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'uid': uid};
    final _result = await _dio.fetch<String?>(_setStreamType<String?>(Options(
            method: 'POST', headers: _headers, extra: _extra)
        .compose(
            _dio.options, 'https://guardian-plus.herokuapp.com/api=routine/get_all/',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
