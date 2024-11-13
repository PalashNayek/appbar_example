import 'package:get_it/get_it.dart';

import '../view_models/appbar_viewmodel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<AppBarViewModel>(() => AppBarViewModel());
}
