import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/cpf/controllers/cpf_controller.dart';
import 'package:fteam_test/app/cpf/views/cpf_view.dart';
import 'package:fteam_test/app/movies/controllers/movie_controller.dart';
import 'package:fteam_test/app/movies/services/movie_service.dart';
import 'package:fteam_test/app/movies/services/movie_service_api_impl.dart';
import 'package:fteam_test/app/price/controllers/price_controller.dart';
import 'package:fteam_test/app/price/views/price_view.dart';

import 'home/views/home_view.dart';
import 'imc/controllers/imc_controller.dart';
import 'imc/views/imc_view.dart';
import 'movies/views/movie_view.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<MovieService>((i) => MovieApiServiceImpl()),
        Bind.singleton((i) => ImcController()),
        Bind.singleton((i) => PriceController()),
        Bind.singleton((i) => CpfController()),
        Bind.singleton((i) => MovieController(service: Modular.get()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
        ChildRoute('/imc', child: (context, args) => const ImcView()),
        ChildRoute('/price', child: (context, args) => const PriceView()),
        ChildRoute('/cpf', child: (context, args) => const CpfView()),
        ChildRoute('/movies', child: (context, args) => const MoviesView()),
      ];
}
