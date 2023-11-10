part of 'equipment_cubit.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class EquipmentState with _$EquipmentState {
  const factory EquipmentState(
      {required List<EquipmentModel> availableEquipment,
      required bool isLoading,
      required bool isFailed,
      required bool showSnackBar,
      required bool noUse,
      required String showMessage}) = _EquipmentState;

  factory EquipmentState.initial() => const EquipmentState(
      availableEquipment: [],
      isLoading: false,
      isFailed: false,
      showSnackBar: false,
      noUse: false,
      showMessage: '');
}
