import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/movies/view_model/movie_view_model.dart';

class MovieButton extends StatelessWidget {
  const MovieButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<MovieViewModel>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
            onPressed: () async {
              await controller.getMovies();
            },
            child: Text(
              "Buscar filmes",
              style: TextStyle(fontSize: 18),
            )),
      ),
    );
  }
}
