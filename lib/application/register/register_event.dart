part of 'register_bloc.dart';

@freezed
abstract class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.isUserCreated(int phone) = IsUserCreated;
  const factory RegisterEvent.changeUserStatus(bool exist) = ChangeUserStatus;
  const factory RegisterEvent.createUser(int phone) = CreateUser;
  const factory RegisterEvent.numberPhoneChanged(int phone) =
      NumberPhoneChanged;
  const factory RegisterEvent.emailAddressChanged(String emailAddress) =
      EmailAddressChanged;
  const factory RegisterEvent.nameChanged(String name) = NameChanged;
  const factory RegisterEvent.lastNameChanged(String name) = LastNameChanged;
  const factory RegisterEvent.addressChanged(String address) = AddressChanged;
  const factory RegisterEvent.getCities(int page) = GetCities;
  const factory RegisterEvent.citiesReceived(List<CityObj> cities) =
      CitiesChanged;
  const factory RegisterEvent.isFailure(String error) = IsFailure;
}
