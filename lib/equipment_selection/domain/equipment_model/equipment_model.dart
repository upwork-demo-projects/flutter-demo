import 'package:freezed_annotation/freezed_annotation.dart';
part 'equipment_model.freezed.dart';
part 'equipment_model.g.dart';

@freezed
class EquipmentModel with _$EquipmentModel {
  const factory EquipmentModel({
    required String name,
    required String id,
    required String assetName,
    required bool isSelected,
    @Default(false) bool isLoading,
  }) = _EquipmentModel;

  factory EquipmentModel.fromJson(Map<String, dynamic> json) =>
      _$EquipmentModelFromJson(json);
}
