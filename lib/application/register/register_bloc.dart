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
    yield* event.map(createUser: (e) async* {
      yield* _performCreateUser(e.phone, _registerFacade.createUser);
    }, isUserCreated: (e) async* {
      Map<String, dynamic> body= {};
      body["phone"] = e.phone;
      yield* _performIsUserCreated(body, _registerFacade.isUserCreated);
    });
  }

  Stream<RegisterState> _performCreateUser(
    int phone,
    Future<Either<ServerFailure, Map<String, dynamic>>> Function(
            {@required int phone})
        forwardedCall,
  ) async* {
    Either<ServerFailure, Map<String, dynamic>> failureOrSuccess;

    yield state.copyWith(
      createUserFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardedCall(phone: phone);

    yield state.copyWith(
      createUserFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Stream<RegisterState> _performIsUserCreated(
    Map<String, dynamic> phone,
    Future<Either<ServerFailure, Map<String, dynamic>>> Function(
            {@required Map<String, dynamic>  phone})
        forwardedCall,
  ) async* {
    Either<ServerFailure, Map<String, dynamic>> failureOrSuccess;

    yield state.copyWith(
      createUserFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardedCall(phone: phone);

    yield state.copyWith(
      createUserFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
