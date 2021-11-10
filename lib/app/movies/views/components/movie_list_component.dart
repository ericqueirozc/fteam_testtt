import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/movies/controllers/movie_controller.dart';

class MovieList extends StatelessWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<MovieController>();
    return AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .86,
            child: ListView.builder(
                itemCount: controller.movies.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(controller.movies[index].name),
                      subtitle: Text(controller.movies[index].age.toString()),
                    ),
                  );
                }),
          );
        });
  }
}
