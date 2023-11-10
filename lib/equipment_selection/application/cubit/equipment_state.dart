part of 'equipment_cubit.dart';

@freezed
class EquipmentState with _$EquipmentState {
   const factory EquipmentState({
     required List<EquipmentModel> availableEquipment,
     required List<EquipmentModel> selectedEquipment,
     required bool isLoading,
     required bool isFailed,
     required bool showSnackBar,
     required String showMessage
  }) = _EquipmentState;
  
 factory EquipmentState.initial() => const EquipmentState(
        availableEquipment: [],
        selectedEquipment: [],
        isLoading: false,
        isFailed: false,
        showSnackBar: false,
        showMessage: ''
      );
}

