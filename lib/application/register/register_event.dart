part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.isUserCreated(int phone) = IsUserCreated;
  const factory RegisterEvent.createUser(int phone) = CreateUser;
}
