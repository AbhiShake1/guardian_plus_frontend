part of 'rest_client.dart';

class RestClientImpl implements RestClient {
  @override
  Future<UserModel?> login(
      {required String userId, required String password}) async {
    final _data = {'uid': userId, 'password': password};
    final _result = await post(
      Uri.parse('https://guardianplus-production.up.railway.app/api=auth/signin/'),
      body: jsonEncode(_data),
    );
    final value = _result.statusCode >= 400
        ? null
        : UserModel.fromJson(jsonDecode(_result.body));
    return value;
  }

  @override
  Future<UserModel?> currentUser() async {
    final _result = await get(
      Uri.parse(
          'https://guardianplus-production.up.railway.app/api=auth/current_user/'),
    );
    final value = _result.statusCode >= 400
        ? null
        : UserModel.fromJson(jsonDecode(_result.body));
    return value;
  }

  @override
  Future<String?> logout() async {
    final _result = await get(
      Uri.parse('https://guardianplus-production.up.railway.app/api=auth/signout/'),
    );
    final value = _result.statusCode >= 400 ? null : _result.body;
    return value;
  }

  @override
  Future<String?> updatePassword({required password}) async {
    final _data = {'password': password};
    final _result = await put(
      Uri.parse(
          'https://guardianplus-production.up.railway.app/api=auth/update_password/'),
      body: jsonEncode(_data),
    );
    final value = _result.statusCode >= 400 ? null : _result.body;
    return value;
  }

  @override
  Future<String?> getChildren() async {
    final _result = await get(
      Uri.parse(
          'https://guardianplus-production.up.railway.app/api=parent/get_children/'),
    );
    final value = _result.statusCode >= 400 ? null : _result.body;
    return value;
  }

  @override
  Future<String?> getChildSubjects({required userId}) async {
    final _data = {'uid': userId};
    final _result = await post(
      Uri.parse(
          'https://guardianplus-production.up.railway.app/api=parent/get_child_subjects/'),
      body: jsonEncode(_data),
    );
    final value = _result.statusCode >= 400 ? null : _result.body;
    return value;
  }

  @override
  Future<String?> getChildProgress({required userId}) async {
    final _data = {'uid': userId};
    final _result = await post(
      Uri.parse(
          'https://guardianplus-production.up.railway.app/api=child/get_child_progress/'),
      body: jsonEncode(_data),
    );
    final value = _result.statusCode >= 400 ? null : _result.body;
    return value;
  }

  @override
  Future<List<AssessmentModel?>?> getAssessments() async {
    final _result = await get(
      Uri.parse(
          'https://guardianplus-production.up.railway.app/api=assessments/get_all/'),
    );
    final List<AssessmentModel?> value = [];
    (jsonDecode(_result.statusCode >= 400 ? '' : _result.body) ?? '').forEach(
        (i) => value.add(AssessmentModel.fromJson(jsonDecode(jsonEncode(i)))));
    return value;
  }

  @override
  Future<List<NoticeModel?>?> getNotices() async {
    final _result = await get(
      Uri.parse(
          'https://guardianplus-production.up.railway.app/api=notice/get_all/'),
    );
    final List<NoticeModel?> value = [];
    (jsonDecode(_result.statusCode >= 400 ? '' : _result.body) ?? '')
        .forEach((i) => value.add(NoticeModel.fromJson(jsonDecode(jsonEncode(i)))));
    return value;
  }

  @override
  Future<String?> postFeedback(String title, String description) async {
    final _data = {'title': title, 'description': description};
    final _result = await post(
      Uri.parse('https://guardianplus-production.up.railway.app/api=feedback/post/'),
      body: jsonEncode(_data),
    );
    final value = _result.statusCode >= 400 ? null : _result.body;
    return value;
  }

  @override
  Future<String?> getRoutine(String uid) async {
    final _data = {'uid': uid};
    final _result = await post(
      Uri.parse(
          'https://guardianplus-production.up.railway.app/api=routine/get_all/'),
      body: jsonEncode(_data),
    );
    final value = _result.statusCode >= 400 ? null : _result.body;
    return value;
  }
}
