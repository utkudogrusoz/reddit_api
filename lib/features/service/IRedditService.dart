import 'package:reddit_api/features/model/response_model/reddit_model.dart';

abstract class IRedditService {
  Future<List<Child>?> getPosts();
}
