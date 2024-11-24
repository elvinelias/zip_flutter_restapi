import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));
String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
    int newsCategoryId;
    int id;
    String title;
    String? newsText;

    Post({
        required this.newsCategoryId,
        required this.id,
        required this.title,
        this.newsText,
    });

    factory Post.fromJson(Map<String, dynamic> json) => Post(
        newsCategoryId: json["newsCategoryId"],
        id: json["id"],
        title: json["title"],
        newsText: json["newsText"],
    );

    Map<String, dynamic> toJson() => {
        "newsCategoryId": newsCategoryId,
        "id": id,
        "title": title,
        "newsText": newsText,
    };
}
