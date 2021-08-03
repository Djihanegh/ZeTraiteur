import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ze_traiteur/domain/entities/city_obj.dart';
import 'package:ze_traiteur/domain/entities/user.dart';
import 'package:ze_traiteur/domain/register/i_register_facade.dart';

import '../../domain/core/failures.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: IRegisterFacade)
class RegisterFacade implements IRegisterFacade {
  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> createUser(
      {User? user}) async {
    try {
      String phone = "0" + "${user!.phone}";
      Map<String, dynamic> map = {
        "first_name": user.firstName,
        "last_name": user.lastName,
        "address": user.address,
        "phone": phone,
        "email": user.email,
      };


      final result = await getIt<ZeTraiteurApiService>().register(map);
      if (result.statusCode == 201) {
        return right(result.body!);
      } else {
        return left(ServerFailure.apiFailure(msg: result.error.toString()));
      }
    } catch (e) {
      return left(ServerFailure.serverError());
    }
  }

  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> isUserCreated(
      {Map<String, dynamic>? phone}) async {
    try {
      final result = await getIt<ZeTraiteurApiService>().login(phone!);
      if (result.body!["error"] != "no such user") {
        return right(result.body!);
      } else {
        return left(ServerFailure.apiFailure(msg: result.body!["error"]));
      }
    } catch (e) {
      return left(ServerFailure.serverError());
    }
  }

  @override
  Future<Either<ServerFailure, List<CityObj>>> getCities(
      {required int page}) async {
    try {
      final result = await getIt<ZeTraiteurApiService>().getCities(1);
      if (result.base.statusCode == 200) {
        List list = result.body!["results"];
        List<CityObj> cities = [];
        list.forEach((element) {
          CityObj temp = CityObj.fromJson(element);
          cities.add(temp);
        });
        return right(cities);
      } else {
        return left(ServerFailure.apiFailure(msg: "Erreur"));
      }
    } catch (e) {
      return left(ServerFailure.serverError());
    }
  }
}
