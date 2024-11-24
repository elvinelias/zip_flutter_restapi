import '../models/post.dart';
import 'package:http/http.dart' as http;
class RemoteServices 
{
  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var uri = Uri.parse('http://localhost:8080/api/v1/news/newsItems/1');
    var response = await client.get(uri);
    if(response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    } else {
      return postFromJson('[{"id": 1,"newsCategoryId": 1,"newsText": "","title": "error from server"}]');
    }

  }
}