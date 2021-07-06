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
      {Map<String, dynamic>? phone}) async {
    try {
      print('HHHHHHHHHHHHH');
      final result = await getIt<ZeTraiteurApiService>().login(phone!);
      print("BODDDDY  ${result.body!["error"]} ");
      if (result.body!["error"] != "no such user") {
        print("RIGHHHT");
        return right(result.body!);
      } else {
        print("LEFFT");
        return left(ServerFailure.apiFailure(msg: result.body!["error"]));
      }
    } catch (e) {
      //print(e);
      return left(ServerFailure.serverError());
    }
  }
}
