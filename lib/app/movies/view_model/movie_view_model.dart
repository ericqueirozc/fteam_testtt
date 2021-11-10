import 'package:flutter/cupertino.dart';
import 'package:fteam_test/app/movies/models/movie_model.dart';
import 'package:fteam_test/app/movies/services/movie_service.dart';

class MovieViewModel extends ChangeNotifier {
  MovieViewModel({required this.service});
  MovieService service;
  List<MovieModel> _movies = [];
  List<MovieModel> get movies => _movies;

  getMovies() async {
    _movies = await service.getMovies();
    notifyListeners();
  }
}
