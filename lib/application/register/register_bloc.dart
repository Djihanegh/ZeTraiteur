import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:ze_traiteur/domain/entities/user.dart';
import 'package:ze_traiteur/domain/register/i_register_facade.dart';
import 'package:ze_traiteur/domain/entities/city_obj.dart';

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
    yield* event.map(citiesReceived: (e) async* {
      yield state.copyWith(
        cities: e.cities,
      );
    }, getCities: (e) async* {
      yield* _performGetCities(e.page, _registerFacade.getCities);
    }, createUser: (e) async* {
      yield* _performCreateUser(e.phone, _registerFacade.createUser);
    }, isUserCreated: (e) async* {
      Map<String, dynamic> body = {};
      body["phone"] = "0" + "${e.phone}";
      yield* _performIsUserCreated(body, _registerFacade.isUserCreated);
    }, numberPhoneChanged: (e) async* {
      yield state.copyWith(phone: e.phone);
    }, changeUserStatus: (e) async* {
      yield state.copyWith(isUserExists: e.exist);
    }, nameChanged: (e) async* {
      yield state.copyWith(name: e.name);
    }, emailAddressChanged: (e) async* {
      yield state.copyWith(emailAddress: e.emailAddress);
    }, addressChanged: (e) async* {
      yield state.copyWith(address: e.address);
    }, lastNameChanged: (e) async* {
      yield state.copyWith(lastName: e.name);
    }, isFailure:(e) async* {
      yield state.copyWith(error: e.error);
    });
  }

  Stream<RegisterState> _performCreateUser(
    int phone,
    Future<Either<ServerFailure, Map<String, dynamic>>> Function(
            {@required User user})
        forwardedCall,
  ) async* {
    Either<ServerFailure, Map<String, dynamic>> failureOrSuccess;

    yield state.copyWith(
      createUserFailureOrSuccess: none(),
      isUserExists:  false
    );

    print(state.emailAddress);
    print(state.lastName);
    print(state.name);

    failureOrSuccess = await forwardedCall(
        user: User(
            email: state.emailAddress,
            firstName: state.name,
            lastName: state.lastName,
            address: state.address,
            addresses: [],
            phone: "${0 + state.phone}"));


    yield state.copyWith(
      createUserFailureOrSuccess: optionOf(failureOrSuccess), 
    );
  }

  Stream<RegisterState> _performGetCities(
    int page,
    Future<Either<ServerFailure, List<CityObj>>> Function({required int page})
        forwardedCall,
  ) async* {
    Either<ServerFailure, List<CityObj>> failureOrSuccess;

    yield state.copyWith(
      getCitiesFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardedCall(page: page);

    yield state.copyWith(
      getCitiesFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }

  Stream<RegisterState> _performIsUserCreated(
    Map<String, dynamic> phone,
    Future<Either<ServerFailure, Map<String, dynamic>>> Function(
            {@required Map<String, dynamic> phone})
        forwardedCall,
  ) async* {
    Either<ServerFailure, Map<String, dynamic>> failureOrSuccess;

    yield state.copyWith(
      isUserCreatedFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardedCall(phone: phone);

    yield state.copyWith(
      isUserCreatedFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
