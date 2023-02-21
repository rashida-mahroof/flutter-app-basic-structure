import 'package:dartz/dartz.dart';
import 'package:my_note/Domain/core/failures/main-failure.dart';
import 'package:my_note/Domain/home/models/home.dart';

abstract class IDownloadsRepo{
  Future<Either<MainFailure,List<Home>>> getHomeImages();
}