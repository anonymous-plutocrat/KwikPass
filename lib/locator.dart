import 'package:get_it/get_it.dart';
import 'package:road_to_flutter/auth/auths.dart';
import 'package:road_to_flutter/services/database_store.dart';
import 'package:road_to_flutter/services/dialog_service.dart';
import 'package:road_to_flutter/services/navigator_service.dart';



GetIt locator = GetIt.instance;


void locatorSetup(){
  locator.registerLazySingleton(() => Auths());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => FirestoreDB());
}