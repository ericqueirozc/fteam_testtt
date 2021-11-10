import 'dart:convert';

import 'package:fteam_test/app/movies/models/movie_model.dart';
import 'package:http/http.dart' as http;

import 'movie_service.dart';

class MovieApiServiceImpl implements MovieService {
  @override
  Future<List<MovieModel>> getMovies() async {
    var url = Uri.parse(
        "https://my-json-server.typicode.com/ericqueirozc/fteamtraineeapi/movies");
    var response = await http.get(url);
    List _moviesList = jsonDecode(response.body);
    List<MovieModel> _movies = _moviesList
        .map((e) => MovieModel(e["name"], (e["age"]).toString()))
        .toList();
    return _movies;
  }
}
