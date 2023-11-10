abstract class SelectedEquipmentService {
  Future<List<String>> getSelectedEquipment();
  Future<void> saveSelectedEquipment(List<String> selectedEquipment);
}
