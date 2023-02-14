import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Api_model/api_model.dart';


class NewsHelper {
  NewsHelper._();
  static final NewsHelper newsHelper = NewsHelper._();

  final String url =
      "https://newsapi.org/v2/everything?q=tesla&from=2023-01-13&sortBy=publishedAt&apiKey=24142845a77542609a6ebb35a8652675";
  Future<NewsModel?> fetchAllNewsData() async {
    http.Response res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      Map decodeData = jsonDecode(res.body);
      NewsModel? news = NewsModel.fromJson(data: decodeData);

      print(decodeData);

      return news;
    }
    return null;
  }

  final String sport =
      "https://newsapi.org/v2/everything?q=tesla&from=2023-01-13&sortBy=publishedAt&apiKey=24142845a77542609a6ebb35a8652675";
  Future<NewsModel?> fetchAllSportsNewsData() async {
    http.Response res = await http.get(Uri.parse(sport));
    if (res.statusCode == 200) {
      Map decodeData = jsonDecode(res.body);
      NewsModel? sportsNews = NewsModel.fromJson(data: decodeData);

      print(decodeData);

      return sportsNews;
    }
    return null;
  }

  final String business =
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=24142845a77542609a6ebb35a8652675";
  Future<NewsModel?> fetchAllBusinessNewsData() async {
    http.Response res = await http.get(Uri.parse(business));
    if (res.statusCode == 200) {
      Map decodeData = jsonDecode(res.body);
      NewsModel? businessNews = NewsModel.fromJson(data: decodeData);

      print(decodeData);

      return businessNews;
    }
    return null;
  }

  final String entertainment =
      "https://newsapi.org/v2/top-headlines?country=in&category=entertainment&apiKey=24142845a77542609a6ebb35a8652675";
  Future<NewsModel?> fetchAllEntertainNewsData() async {
    http.Response res = await http.get(Uri.parse(entertainment));
    if (res.statusCode == 200) {
      Map decodeData = jsonDecode(res.body);
      NewsModel? entertainmentNews = NewsModel.fromJson(data: decodeData);

      print(decodeData);

      return entertainmentNews;
    }
    return null;
  }

  final String science =
      "https://newsapi.org/v2/top-headlines?country=in&category=science&apiKey=24142845a77542609a6ebb35a8652675";
  Future<NewsModel?> fetchAllScienceNewsData() async {
    http.Response res = await http.get(Uri.parse(science));
    if (res.statusCode == 200) {
      Map decodeData = jsonDecode(res.body);
      NewsModel? scienceNews = NewsModel.fromJson(data: decodeData);

      print(decodeData);

      return scienceNews;
    }
    return null;
  }

  final String health =
      "https://newsapi.org/v2/top-headlines?country=in&category=health&apiKey=24142845a77542609a6ebb35a8652675";
  Future<NewsModel?> fetchAllHealthNewsData() async {
    http.Response res = await http.get(Uri.parse(health));
    if (res.statusCode == 200) {
      Map decodeData = jsonDecode(res.body);
      NewsModel? healthNews = NewsModel.fromJson(data: decodeData);

      print(decodeData);

      return healthNews;
    }
    return null;
  }


  }
