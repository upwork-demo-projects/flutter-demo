// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EquipmentModelImpl _$$EquipmentModelImplFromJson(Map<String, dynamic> json) =>
    _$EquipmentModelImpl(
      name: json['name'] as String,
      assetName: json['assetName'] as String,
      isSelected: json['isSelected'] as bool,
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$EquipmentModelImplToJson(
        _$EquipmentModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'assetName': instance.assetName,
      'isSelected': instance.isSelected,
      'isLoading': instance.isLoading,
    };
