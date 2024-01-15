import 'package:get_it/get_it.dart';
import 'package:my_portfolio/core/data_source/json_helper.dart';
import 'package:my_portfolio/modules/projects/bloc/projects_bloc.dart';
import 'package:my_portfolio/modules/projects/repository/projects_repository.dart';

/// GetIt is a simple service locator for Dart and Flutter projects. [GetIt]
final gi = GetIt.instance;

/// init GetIt
Future<void> initGetIt() async {
  gi
    // helpers
    ..registerLazySingleton(() => JsonHelper())

    // blocs
    ..registerFactory(() => ProjectsBloc(gi()))

    // data ( local + remote) repositories Objects
    ..registerLazySingleton(() => ProjectsRepository(jsonHelper: gi()));
}
