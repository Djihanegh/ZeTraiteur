import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:ze_traiteur/domain/register/i_register_facade.dart';

import '../../domain/core/failures.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IRegisterFacade _registerFacade;

  RegisterBloc(this._registerFacade) : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    /*yield* event.map(  getAllMenus: (e) async* {
    yield* _performGetAllMenus(
        e.page,
        _menuFacade.getAllMenus,
      );
    }, indexChanged: (e) async* { 
      yield state.copyWith(index: e.index);
     });*/
  }

 /* Stream<RegisterState> _performGetAllMenus(
    int page,
    Future<Either<ServerFailure, Map<String, dynamic>>> Function(
            {@required int page})
        forwardedCall,
  ) async* {
    Either<ServerFailure, Map<String, dynamic>> failureOrSuccess;

    yield state.copyWith(
      menusFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardedCall(page: page);

    yield state.copyWith(
      menusFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }*/

  
}
