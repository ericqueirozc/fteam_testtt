import 'package:flutter_modular/flutter_modular.dart';
import 'package:fteam_test/app/cpf/views/cpf_view.dart';
import 'package:fteam_test/app/movies/services/movie_service.dart';
import 'package:fteam_test/app/movies/services/movie_service_api_impl.dart';
import 'package:fteam_test/app/price/view_model/price_view_model.dart';
import 'package:fteam_test/app/price/views/price_view.dart';
import 'home/views/home_view.dart';
import 'imc/view_model/imc_view_model.dart';
import 'imc/views/imc_view.dart';
import 'movies/services/movie_service_local_impl.dart';
import 'movies/view_model/movie_view_model.dart';
import 'movies/views/movie_view.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<MovieService>((i) => MovieLocalServiceImpl()),
        Bind.singleton((i) => ImcViewModel()),
        Bind.singleton((i) => PriceViewModel()),
        Bind.singleton((i) => CpfController()),
        Bind.singleton((i) => MovieViewModel(service: Modular.get()))
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

class CpfController {}
