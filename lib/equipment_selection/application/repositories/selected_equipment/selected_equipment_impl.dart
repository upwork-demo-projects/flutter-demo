import 'package:equipment_app/equipment_selection/application/repositories/selected_equipment/selected_equipment.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/equipment_model/equipment_model.dart';

class SelectedEquipmentServiceImpl extends SelectedEquipmentService {
  static const _keySelectedEquipment = 'selected_equipment';

  @override
  Future<List<EquipmentModel>> getSelectedEquipment() async {
    final prefs = await SharedPreferences.getInstance();
    final selectedEquipmentData = prefs.getStringList(_keySelectedEquipment);

    if (selectedEquipmentData == null) {
      return [];
    }

    final selectedEquipment = selectedEquipmentData.map((data) {
      final equipmentData = data.split(';');
      return EquipmentModel(
        name: equipmentData[0],
        assetName: equipmentData[1],
        isSelected: equipmentData[2] == 'true' ? true : false,
      );
    }).toList();

    return selectedEquipment;
  }

  @override
  Future<void> saveSelectedEquipment(
      List<EquipmentModel> selectedEquipment) async {
    final prefs = await SharedPreferences.getInstance();

    final selectedEquipmentData = selectedEquipment
        .map((equipment) => '${equipment.name};${equipment.assetName};${equipment.isSelected}')
        .toList();

    prefs.setStringList(_keySelectedEquipment, selectedEquipmentData);
  }
}
