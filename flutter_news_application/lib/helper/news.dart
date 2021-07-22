import 'dart:convert';

import 'package:flutter_news_application/Model/article_model.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&apiKey=f66456a434ca4ac49a4726c829f279dc";
    var resp = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(resp.body);
    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        //print(jsonData['articles']);
        if (element["urlToImage"] != null &&
            element["description"] != null &&
            element["author"] != null &&
            element["content"] != null &&
            element["url"] != null &&
            element["title"] != null) {
          ArticleModel article = ArticleModel(
            author: element["author"],
            title: element["title"],
            url: element["url"],
            description: element["description"],
            urlToImg: element["urlToImage"],
            content: element["content"],
          );
          news.add(article);
        }
      });
    }
  }
}

class CategoryNewsClass {
  List<ArticleModel> news = [];

  Future<void> getCategoryNews(String category) async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=f66456a434ca4ac49a4726c829f279dc";

    var resp = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(resp.body);
    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        //print(jsonData['articles']);
        if (element["urlToImage"] != null &&
            element["description"] != null &&
            element["author"] != null &&
            element["content"] != null &&
            element["url"] != null &&
            element["title"] != null) {
          ArticleModel article = ArticleModel(
            author: element["author"],
            title: element["title"],
            url: element["url"],
            description: element["description"],
            urlToImg: element["urlToImage"],
            content: element["content"],
          );
          news.add(article);
        }
      });
    }
  }
}
