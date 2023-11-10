import 'package:equipment_app/equipment_selection/application/repositories/selected_equipment/selected_equipment.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SelectedEquipmentServiceImpl extends SelectedEquipmentService {
  static const _keySelectedEquipment = 'selected_equipment';

  @override
  Future<List<String>> getSelectedEquipment() async {
    final prefs = await SharedPreferences.getInstance();
    final selectedEquipmentData =
        prefs.getStringList(_keySelectedEquipment) ?? [];

    return selectedEquipmentData;
  }

  @override
  Future<void> saveSelectedEquipment(List<String> selectedEquipment) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setStringList(_keySelectedEquipment, selectedEquipment);
  }
}
