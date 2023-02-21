import 'package:flutter_infinite_list/posts/models/models.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  test('test post', () {
    final Post post = Post(id: 1, title: "x", body: "y");
    expect(post.id, 1);
    expect(post.title, "x");
    expect(post.body, "y");
  });
}
  final http.Client httpClient;

Future<List<Post>> _fetchPosts([int startIndex = 0]) async {
     
   var _postLimit = 20;
  final response = await httpClient.get(
    Uri.https(
      'jsonplaceholder.typicode.com',
      '/posts',
      <String, String>{'_start': '$startIndex', '_limit': '$_postLimit'},
    ),
  );
  if (response.statusCode == 200) {
    final body = json.decode(response.body) as List;
    return body.map((dynamic json) {
      final map = json as Map<String, dynamic>;
      return Post(
        id: map['id'] as int,
        title: map['title'] as String,
        body: map['body'] as String,
      );
    }).toList();
  }
  throw Exception('error fetching posts');
}
