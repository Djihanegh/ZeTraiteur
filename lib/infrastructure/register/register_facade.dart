import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ze_traiteur/domain/register/i_register_facade.dart';

import '../../domain/core/failures.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: IRegisterFacade)
class RegisterFacade implements IRegisterFacade {
  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> createUser({int? phone}) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> isUserCreated(
      {int? phone}) async {
    try {
      print('TRYYY');
      final result = await getIt<ZeTraiteurApiService>().login(phone!);
      print(result.body!["error"]);
      if (result.body!["error"] == null) {
        return right(result.body!);
      } else {
        return left(ServerFailure.apiFailure(msg: result.error.toString()));
      }
    } catch (e) {
      print(e);
      return left(ServerFailure.serverError());
    }
  }
}
