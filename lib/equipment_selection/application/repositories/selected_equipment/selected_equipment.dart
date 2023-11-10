import '../../../domain/equipment_model/equipment_model.dart';

abstract class SelectedEquipmentService {
  Future<List<EquipmentModel>> getSelectedEquipment();
  Future<void> saveSelectedEquipment(List<EquipmentModel> selectedEquipment);
}
