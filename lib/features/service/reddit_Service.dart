import 'dart:convert';
import 'dart:io';

import 'package:reddit_api/core/constants/path/url_constant.dart';
import 'package:reddit_api/features/model/response_model/reddit_model.dart';
import 'package:reddit_api/features/service/IRedditService.dart';
import 'package:http/http.dart' as http;

class RedditService extends IRedditService {
  @override
  Future<List<Child>?> getPosts() async {
    final Map<String, String> _queryParameters = <String, String>{
      'count': '20',
    };
    var url = Uri.https(UrlConstant.BASE_URL, UrlConstant.PATH_URL, _queryParameters);
    var response = await http.get(url);

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> decoded = json.decode(response.body);

      List<Child>? posts = RedditModel.fromJson(decoded).data!.children!;
      return posts;
    } else {
      return [];
    }
  }
}
