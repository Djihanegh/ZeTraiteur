import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ze_traiteur/domain/core/failures.dart';
import 'package:ze_traiteur/domain/order/i_order_facade.dart';
import 'package:ze_traiteur/infrastructure/api/api_service.dart';

import '../../injection.dart';

@LazySingleton(as: IOrderFacade)
class OrderFacade implements IOrderFacade {
  @override
  Future<Either<ServerFailure, Map<String, dynamic>>> createOrder(
      {Map<String, dynamic>? body}) async {
    try {
      final result = await getIt<ZeTraiteurApiService>().createOrder(body!);
      if (result.statusCode == 201) {
        print("HHHHHHHHHHHHHHHHHHHHHHHHHH");
        return right(result.body!);
      } else {
        return left(ServerFailure.apiFailure(msg: result.error.toString()));
      }
    } catch (e) {
      return left(ServerFailure.serverError());
    }
  }
}
