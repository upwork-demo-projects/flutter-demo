import 'package:equipment_app/equipment_selection/application/repositories/equipment/equipment_service.dart';
import 'package:equipment_app/equipment_selection/application/repositories/equipment/equipment_service_impl.dart';
import 'package:equipment_app/equipment_selection/application/repositories/selected_equipment/selected_equipment_impl.dart';
import 'package:equipment_app/equipment_selection/presentation/equipment_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'equipment_selection/application/repositories/selected_equipment/selected_equipment.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResponsiveSizer(
        builder: (context, orientation, screenType) {
          return EquipmentSelectionScreen();
        },
      ),
    );
  }
}

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<EquipmentService>(EquipmentServiceImpl());
  locator.registerSingleton<SelectedEquipmentService>(
      SelectedEquipmentServiceImpl());
}
