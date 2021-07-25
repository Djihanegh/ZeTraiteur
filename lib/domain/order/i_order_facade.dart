
import 'package:dartz/dartz.dart';
import 'package:ze_traiteur/domain/core/failures.dart';

abstract class IOrderFacade {
    Future<Either<ServerFailure, Map<String, dynamic>>> createOrder({Map<String,dynamic> body});

}
