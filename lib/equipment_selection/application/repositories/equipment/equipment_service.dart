import '../../../domain/equipment_model/equipment_model.dart';

abstract class EquipmentService {
  Future<List<EquipmentModel>> fetchAvailableEquipment();
}
