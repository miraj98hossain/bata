import 'package:bata/data_source/remote_data_source/remote_data_source.dart';
import 'package:bata/data_source/remote_data_source/remote_data_source_impl.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

T getService<T extends Object>() {
  return getIt<T>();
}

abstract class DIContainer {
  static Future<void> configureServices({String env = "dev"}) async {
    // switch (env) {
    //   case 'dev':
    //     getIt.registerSingleton<AppConfig>(AppConfigImplDev.instance);
    //     break;
    //   case 'test':
    //     getIt.registerSingleton<AppConfig>(AppConfigImplTest.instance);
    //     break;
    //   default:
    //     getIt.registerSingleton<AppConfig>(AppConfigImpl.instance);
    //     break;
    // }
// get the application documents directory
    // var dir = await getApplicationDocumentsDirectory();
// make sure it exists
    // await dir.create(recursive: true);
// build the database path
    // var dbPath = join(dir.path, 'hospital_booking_system.db');
// open the database
    // var db = await databaseFactoryIo.openDatabase(dbPath);

    // getIt.registerLazySingleton<LocalDataSource>(
    //   () => LocalDataSourceImpl(database: db),
    // );

    // getIt.registerLazySingleton<FirebaseDataSource>(
    //   () => FirebaseDataSourceImpl(),
    // );

    getIt.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceImpl(),
    );

    // getIt.registerLazySingleton<ConnectivityService>(
    //   () => ConnectivityService(),
    // );

    // getIt.registerLazySingleton<DataRepository>(
    //   () => DataRepositoryImpl(
    //     connectivityService: getIt<ConnectivityService>(),
    //     remoteDataSource: getIt<RemoteDataSource>(),
    //     localDataSource: getIt<LocalDataSource>(),
    //     firebaseDataSource: getIt<FirebaseDataSource>(),
    //   ),
    // );
  }

  static void dispose() {
    getIt.reset();
  }
}
