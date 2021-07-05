import 'package:dartz/dartz.dart';

import '../core/failures.dart';

abstract class IRegisterFacade {
  Future<Either<ServerFailure, Map<String, dynamic>>> createUser({int phone});
  Future<Either<ServerFailure, Map<String, dynamic>>> isUserCreated({Map<String, dynamic> phone});
}
