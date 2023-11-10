import 'package:equipment_app/equipment_selection/application/repositories/equipment/equipment_service.dart';
import 'package:equipment_app/utils/asset_constants.dart';
import '../../../domain/equipment_model/equipment_model.dart';

class EquipmentServiceImpl extends EquipmentService {
  Future<List<EquipmentModel>> fetchAvailableEquipment() async {
    await Future.delayed(Duration(seconds: 2));
    final equipmentData = [
      {
        'name': 'Bodyweight',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
      {
        'name': 'Dumbbells',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
      {
        'name': 'Bands',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
      {
        'name': 'Warmup',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
      {
        'name': 'Pullups',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
      {
        'name': 'Pushups',
        'assetName': AssetConstants.athleteImage,
        'isSelected': 'false'
      },
    ];

    final availableEquipment = equipmentData
        .map((data) => EquipmentModel(
            name: data['name']!,
            assetName: data['assetName']!,
            isSelected: data['isSelected'] == 'true' ? true : false))
        .toList();

    return availableEquipment;
  }
}
