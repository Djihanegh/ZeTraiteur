part of 'menu_bloc.dart';

@freezed
abstract class MenuEvent with _$MenuEvent {
  const factory MenuEvent.getAllMenus(int page) = GetAllMenus;
  const factory MenuEvent.getAllFoods(int page, int section) = GetAllFoods;
  const factory MenuEvent.getAllExtras(int page) = GetAllExtras;
  const factory MenuEvent.indexChanged(int index) = IndexChanged;
}
