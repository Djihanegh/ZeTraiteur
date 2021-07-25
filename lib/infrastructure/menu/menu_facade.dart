import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failures.dart';
import '../../domain/menu/i_menu_facade.dart';
import '../../injection.dart';
import '../api/api_service.dart';

@LazySingleton(as: IMenuFacade)
class MenuFacade implements IMenuFacade {
  int pages = 0;
  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> getAllMenus(
      {int? page}) async {
    try {
      final result = await getIt<ZeTraiteurApiService>().getAllMenus(page!);
      final extras = await getIt<ZeTraiteurApiService>().getAllExtras(page);
      if (result.body != null && extras.body != null) {
        Map<String, dynamic> menus = result.body!;
        menus["extras"] = extras.body;
        pages++;
        return right(menus);
      } else {
        pages = 0;
        return left(ServerFailure.apiFailure(msg: result.error.toString()));
      }
    } catch (e) {
      print(e);
      pages = 0;
      return left(ServerFailure.serverError());
    }
  }

  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> getAllExtras(
      {int? page}) async {
    try {
      final result = await getIt<ZeTraiteurApiService>().getAllExtras(page!);
      if (result.body != null) {
        pages++;
        return right(result.body!);
      } else {
        pages = 0;
        return left(ServerFailure.apiFailure(msg: result.error.toString()));
      }
    } catch (e) {
      print(e);
      pages = 0;
      return left(ServerFailure.serverError());
    }
  }

  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> getAllFoods(
      {int? page, int? section}) async {
    try {
      final result =
          await getIt<ZeTraiteurApiService>().getAllFoods(page!, section!);

      if (result.body != null) {
        pages++;
        return right(result.body!);
      } else {
        pages = 0;
        return left(ServerFailure.apiFailure(msg: result.error.toString()));
      }
    } catch (e) {
      print(e);
      pages = 0;
      return left(ServerFailure.serverError());
    }
  }
}
