import 'package:dartz/dartz.dart';

import '../core/failures.dart';
abstract class IMenuFacade {
  Future<Either<ServerFailure, Map<String, dynamic>>> getAllMenus(
      { int page});
}