class ArticleModel {
  String author;
  String title;
  String description;
  String url;
  String urlToImg;
  String content;
  //late DateTime publishedAt;
  ArticleModel({
    required this.author,
    required this.title,
    required this.url,
    required this.description,
    required this.urlToImg,
    required this.content,
  });
}
