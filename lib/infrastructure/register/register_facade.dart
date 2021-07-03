import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ze_traiteur/domain/register/i_register_facade.dart';

import '../../domain/core/failures.dart';
import '../../domain/menu/i_menu_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: IMenuFacade)
class RegisterFacade implements IRegisterFacade {
  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> createUser({int? phone}) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> isUserCreated({int? phone}) {
    // TODO: implement isUserCreated
    throw UnimplementedError();
  }
  
}
