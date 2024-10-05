import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:flutter/foundation.dart';

import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'features/gif/bloc/gif_bloc.dart';
import 'features/gif/repo/get_gif_repo.dart';
import 'features/home/bloc/home_bloc.dart';

final sl = GetIt.instance;

///
/// The [init] function is responsible for adding the instances to the graph
///
Future<void> init() async {
  //!External

  /// Adding the [Dio] instance to the graph to be later used by the local data sources
  sl.registerLazySingleton(
    () {
      final dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 20),
          receiveTimeout: const Duration(seconds: 20),
          sendTimeout: const Duration(seconds: 20),
          baseUrl: dotenv.get('BASEURL'),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          responseType: ResponseType.plain,
        ),
      );
      dio.interceptors.add(
        LogInterceptor(
            responseBody: kDebugMode ? true : false,
            requestBody: kDebugMode ? true : false,
            responseHeader: kDebugMode ? true : false,
            requestHeader: kDebugMode ? true : false,
            request: kDebugMode ? true : false,
            error: kDebugMode ? true : false),
      );

      return dio;
    },
  );

  sl.registerLazySingleton(() => DataConnectionChecker());



  //datasource

  sl.registerLazySingleton<GetGifsRepo>(
        () => GetGifsRepoImpl(dio: sl(), networkInfo: sl()),
  );






  // bloc


  sl.registerLazySingleton(() => HomeBloc());

  sl.registerLazySingleton(() => GifBloc(
    getGifsRepo: sl()
  ));






}
