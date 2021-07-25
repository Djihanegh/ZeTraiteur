part of 'menu_bloc.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState({
    required int index,
    required Option<Either<ServerFailure, Map<String, dynamic>>>
        menusFailureOrSuccess,
    required Option<Either<ServerFailure, Map<String, dynamic>>>
        extrasFailureOrSuccess,
    required Option<Either<ServerFailure, Map<String, dynamic>>>
        foodsFailureOrSuccess,
    final String? error,
    final int? nextPageKey,
  }) = _MenuState;

  factory MenuState.initial() => MenuState(
      extrasFailureOrSuccess: none(),
      menusFailureOrSuccess: none(),
      foodsFailureOrSuccess: none(),
      index: 0);
}
