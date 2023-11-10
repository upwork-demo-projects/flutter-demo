import 'package:equipment_app/equipment_selection/application/repositories/equipment/equipment_service.dart';
import 'package:equipment_app/utils/asset_constants.dart';
import '../../../domain/equipment_model/equipment_model.dart';

class EquipmentServiceImpl extends EquipmentService {
  Future<List<EquipmentModel>> fetchAvailableEquipment() async {
    await Future.delayed(Duration(seconds: 2));
    final equipmentData = [
      {
        'name': 'Bodyweight',
        'id': '1',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
      {
        'name': 'Dumbbells',
        'id': '2',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
      {
        'name': 'Bands',
        'id': '3',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
      {
        'name': 'Warmup',
        'id': '4',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
      {
        'name': 'Pullups',
        'id': '5',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
      {
        'name': 'Pushups',
        'id': '6',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
    ];

    final availableEquipment = equipmentData
        .map((data) => EquipmentModel(
            name: data['name']!,
            id: data['id']!,
            assetName: data['assetName']!,
            isSelected: data['isSelected'] == 'true' ? true : false))
        .toList();

    return availableEquipment;
  }
}
