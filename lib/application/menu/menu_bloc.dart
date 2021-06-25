import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/core/failures.dart';
import '../../domain/menu/i_menu_facade.dart';

part 'menu_bloc.freezed.dart';
part 'menu_event.dart';
part 'menu_state.dart';

@injectable
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final IMenuFacade _menuFacade;
  static const _pageSize = 20;

  MenuBloc(this._menuFacade) : super(MenuState.initial());

  @override
  Stream<MenuState> mapEventToState(
    MenuEvent event,
  ) async* {
    yield* event.map(getAllMenus: (e) async* {
      yield* _performGetAllMenus(
        e.page,
        _menuFacade.getAllMenus,
      );
    });
  }

  Stream<MenuState> _performGetAllMenus(
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
  }
}
