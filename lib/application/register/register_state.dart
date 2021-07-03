part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required int phone,
    required
        Option<Either<ServerFailure, Map<String, dynamic>>>
            isUserCreatedFailureOrSuccess,
            required
        Option<Either<ServerFailure, Map<String, dynamic>>>
            createUserFailureOrSuccess,
    final String? error,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        isUserCreatedFailureOrSuccess: none(),
        createUserFailureOrSuccess: none(),
        phone: 0
      );
}
