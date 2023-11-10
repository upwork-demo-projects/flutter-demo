import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../main.dart';
import '../../domain/equipment_model/equipment_model.dart';
import '../repositories/equipment/equipment_service.dart';
import '../repositories/selected_equipment/selected_equipment.dart';

part 'equipment_state.dart';
part 'equipment_cubit.freezed.dart';

class EquipmentCubit extends Cubit<EquipmentState> {
  EquipmentCubit(super.initialState);

  final _equipmentService = locator<EquipmentService>;
  final _selectedEquipmentService = locator<SelectedEquipmentService>;

  void fetchAvailableEquipmentWithSelected() async {
    var availableEquipment =
        await _equipmentService().fetchAvailableEquipment();

    final selectedEquipment =
        await _selectedEquipmentService().getSelectedEquipment();

    availableEquipment.forEach((equipment) {
      availableEquipment = availableEquipment
          .map((e) => selectedEquipment.contains(e.id)
              ? e.copyWith(isSelected: true)
              : e)
          .toList();
    });

    // Update the state
    emit(state.copyWith(
      availableEquipment: availableEquipment,
    ));
  }

  void fetchAvailableEquipment() {
    _equipmentService().fetchAvailableEquipment().then((availableEquipment) {
      emit(state.copyWith(availableEquipment: availableEquipment));
    });
  }

  Future<void> showSnackBar(
      {bool isError = false, required String showMessage}) async {
    emit(state.copyWith(
        showSnackBar: true,
        showMessage:
            isError ? 'Only 3 Equipments can be Selected' : showMessage));
    await Future.delayed(const Duration(milliseconds: 150));
    emit(state.copyWith(showSnackBar: false, showMessage: ''));
  }

  Future<void> toggleEquipmentSelection(EquipmentModel equipment) async {
    int count = 0;
    if (!equipment.isSelected) {
      for (int i = 0; i < state.availableEquipment.length; i++) {
        if (state.availableEquipment[i].isSelected) {
          count++;
        }
      }
      if (count >= 3) {
        showSnackBar(showMessage: '', isError: true);
        emit(state.copyWith(noUse: !state.noUse));
        return;
      }
    }
    List<String> selectedIds = [];
    for (int i = 0; i < state.availableEquipment.length; i++) {
      if (equipment.id == state.availableEquipment[i].id) {
        state.availableEquipment[i] = state.availableEquipment[i]
            .copyWith(isSelected: !state.availableEquipment[i].isSelected);
      }
      if (state.availableEquipment[i].isSelected) {
        selectedIds.add(state.availableEquipment[i].id);
      }
    }
    _selectedEquipmentService().saveSelectedEquipment(selectedIds);
    emit(state.copyWith(noUse: !state.noUse));
  }

  Future<void> toggleEquipmentLoader(EquipmentModel equipment) async {
    int showLoaderAt = 0;
    for (int i = 0; i < state.availableEquipment.length; i++) {
      if (equipment.id == state.availableEquipment[i].id) {
        showLoaderAt = i;
      }
    }
    state.availableEquipment[showLoaderAt] =
        state.availableEquipment[showLoaderAt].copyWith(isLoading: true);
    emit(state.copyWith(noUse: !state.noUse));
    await Future.delayed(Duration(seconds: 1));
    state.availableEquipment[showLoaderAt] =
        state.availableEquipment[showLoaderAt].copyWith(isLoading: false);
    emit(state.copyWith(noUse: !state.noUse));
  }
}
