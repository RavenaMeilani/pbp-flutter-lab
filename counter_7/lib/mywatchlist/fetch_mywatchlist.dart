import 'package:http/http.dart' as http;
import 'package:counter_7/mywatchlist/model/movie.dart';
import 'dart:convert';

Future<List<Movie>> fetchWatchList() async {
  var url = Uri.parse('https://appkatalog.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<Movie> listMovie = [];
  for (var d in data) {
    if (d != null) {
      listMovie.add(Movie.fromJson(d));
    }
  }

  return listMovie;
}