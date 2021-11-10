import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:fteam_test/app/movies/models/movie_model.dart';

import 'movie_service.dart';

class MovieLocalServiceImpl implements MovieService {
  @override
  Future<List<MovieModel>> getMovies() async {
    String movieString = await rootBundle.loadString('movies.json');
    List _moviesList = jsonDecode(movieString);
    List<MovieModel> _movies = _moviesList
        .map((e) => MovieModel(e["name"], (e["age"]).toString()))
        .toList();
    return _movies;
  }
}
