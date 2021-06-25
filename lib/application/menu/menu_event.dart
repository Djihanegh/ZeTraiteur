part of 'menu_bloc.dart';

@freezed
abstract class MenuEvent with _$MenuEvent {
  const factory MenuEvent.getAllMenus( int page) = GetAllMenus;
  const factory MenuEvent.indexChanged(int index) = IndexChanged; 
}
