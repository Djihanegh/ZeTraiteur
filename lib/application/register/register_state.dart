part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required int phone,
    required String name,
    required String lastName,
    required String address,
    required bool isUserExists,
    required String emailAddress,
    required List<CityObj> cities,
    required Option<Either<ServerFailure, Map<String, dynamic>>>
        isUserCreatedFailureOrSuccess,
    required Option<Either<ServerFailure, Map<String, dynamic>>>
        createUserFailureOrSuccess,
    required Option<Either<ServerFailure, List<CityObj>>>
        getCitiesFailureOrSuccess,
    final String? error,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
      error: "Error",
      isUserExists: false,
      name: "",
      address: "",
      lastName: "",
      cities: [],
      emailAddress: "",
      getCitiesFailureOrSuccess: none(),
      isUserCreatedFailureOrSuccess: none(),
      createUserFailureOrSuccess: none(),
      phone: 777896534);
}
