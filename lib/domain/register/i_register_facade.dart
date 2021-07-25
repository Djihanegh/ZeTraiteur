import 'package:dartz/dartz.dart';
import 'package:ze_traiteur/domain/entities/city_obj.dart';
import 'package:ze_traiteur/domain/entities/user.dart';

import '../core/failures.dart';

abstract class IRegisterFacade {
  Future<Either<ServerFailure, Map<String, dynamic>>> createUser({User user});
  Future<Either<ServerFailure, Map<String, dynamic>>> isUserCreated({Map<String, dynamic> phone});
    Future<Either<ServerFailure, List<CityObj>>> getCities({required int page});

}
