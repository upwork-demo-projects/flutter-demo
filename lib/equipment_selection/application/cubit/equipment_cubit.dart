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
          .map((e) => e == equipment
              ? e.copyWith(isSelected: selectedEquipment.contains(e))
              : e)
          .toList();
    });

    // Update the state
    emit(state.copyWith(
      availableEquipment: availableEquipment,
      selectedEquipment: selectedEquipment,
    ));
  }

  void fetchAvailableEquipment() {
    _equipmentService().fetchAvailableEquipment().then((availableEquipment) {
      emit(state.copyWith(availableEquipment: availableEquipment));
    });
  }

  void loadSelectedEquipment() async {
    final selectedEquipment =
        await _selectedEquipmentService().getSelectedEquipment();
    emit(state.copyWith(selectedEquipment: selectedEquipment));
  }

  void saveSelectedEquipment(List<EquipmentModel> selectedEquipment) {
    _selectedEquipmentService().saveSelectedEquipment(selectedEquipment);
    emit(state.copyWith(selectedEquipment: selectedEquipment));
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
    final updatedEquipmentList = state.availableEquipment.map((e) {
      if (e == equipment) {
        return e.copyWith(isSelected: !e.isSelected);
      } else {
        return e;
      }
    }).toList();

    final List<EquipmentModel> updatedSelectedEquipment =
        List.from(state.selectedEquipment);
    if (updatedSelectedEquipment.contains(equipment)) {
      updatedSelectedEquipment.remove(equipment);
    } else {
      updatedSelectedEquipment.add(equipment);
    }

    saveSelectedEquipment(updatedSelectedEquipment);

    emit(state.copyWith(
      availableEquipment: updatedEquipmentList,
      selectedEquipment: updatedSelectedEquipment,
    ));
  }
}
