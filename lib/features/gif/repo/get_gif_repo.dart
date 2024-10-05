

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:data_connection_checker_tv/data_connection_checker.dart';
import 'package:dio/dio.dart';

import '../../../core/constant/app_constants.dart';
import '../../../core/constant/error_constants.dart';
import '../model/gif_model.dart';





abstract class GetGifsRepo {
  Future<Either<String, List<GifModel> >> getGifs();
}

class GetGifsRepoImpl extends GetGifsRepo {
  final Dio dio;
  final DataConnectionChecker networkInfo;

  GetGifsRepoImpl({required this.dio, required this.networkInfo});

  @override
  Future<Either<String, List<GifModel> >> getGifs() async {
    if (await networkInfo.hasConnection) {
      try {
        //should to be local or api data
        List<GifModel> gifs =TestConstants.gifs;
        return Right(gifs);
      } catch (e) {
        return Left(Er.error);
      }
    } else {
      return Left(Er.networkError);
    }
  }
}
