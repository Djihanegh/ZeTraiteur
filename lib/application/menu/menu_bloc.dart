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

  MenuBloc(this._menuFacade) : super(MenuState.initial());

  @override
  Stream<MenuState> mapEventToState(
    MenuEvent event,
  ) async* {
    yield* event.map(
      getAllMenus: (e) async* {
        yield* _performGetAllMenus(
          e.page,
          _menuFacade.getAllMenus,
        );
      },
      indexChanged: (e) async* {
        yield state.copyWith(index: e.index);
      },
      getAllFoods: (e) async* {
        yield* _performGetAllFoods(
          e.page,
          e.section,
          _menuFacade.getAllFoods,
        );
      }, getAllExtras:(e) async* {
        yield* _performGetAllExtras(
          e.page,
          _menuFacade.getAllExtras,
        );
      },
    );
  }

  Stream<MenuState> _performGetAllExtras(
    int page,
    Future<Either<ServerFailure, Map<String, dynamic>>> Function(
            {@required int page})
        forwardedCall,
  ) async* {
    Either<ServerFailure, Map<String, dynamic>> failureOrSuccess;

    yield state.copyWith(
      extrasFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardedCall(page: page);

    yield state.copyWith(
      extrasFailureOrSuccess: optionOf(failureOrSuccess),
    );
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

  Stream<MenuState> _performGetAllFoods(
    int page,
    int section,
    Future<Either<ServerFailure, Map<String, dynamic>>> Function(
            {@required int page, @required int section})
        forwardedCall,
  ) async* {
    Either<ServerFailure, Map<String, dynamic>> failureOrSuccess;

    yield state.copyWith(
      foodsFailureOrSuccess: none(),
    );

    failureOrSuccess = await forwardedCall(page: page, section: section);

    yield state.copyWith(
      foodsFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
