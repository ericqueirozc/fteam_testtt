import 'package:fteam_test/app/movies/models/movie_model.dart';

abstract class MovieService {
  Future<List<MovieModel>> getMovies();
}
