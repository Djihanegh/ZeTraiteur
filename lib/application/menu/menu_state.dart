part of 'menu_bloc.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState({
    required int index,
    required
        Option<Either<ServerFailure, Map<String, dynamic>>>
            menusFailureOrSuccess,
    final String? error,
    final int? nextPageKey,
  }) = _MenuState;

  factory MenuState.initial() => MenuState(
        menusFailureOrSuccess: none(),
        index: 0
      );
}
