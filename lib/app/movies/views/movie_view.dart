import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/movie_button.dart';
import 'components/movie_list_component.dart';

class MoviesView extends StatefulWidget {
  const MoviesView({Key? key}) : super(key: key);

  @override
  _MoviesViewState createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Modular.to.navigate('/');
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Filmes"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: MovieList(),
          ),
          MovieButton()
        ],
      ),
    );
  }
}
