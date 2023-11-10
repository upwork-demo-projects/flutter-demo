import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../utils/asset_constants.dart';
import '../application/cubit/equipment_cubit.dart';

class EquipmentSelectionScreen extends StatelessWidget {
  const EquipmentSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EquipmentCubit(EquipmentState.initial())
        ..fetchAvailableEquipmentWithSelected(),
      child: const EquipmentSelectionScreenConsumer(),
    );
  }
}

class EquipmentSelectionScreenConsumer extends StatelessWidget {
  const EquipmentSelectionScreenConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EquipmentCubit, EquipmentState>(
      listener: (context, state) {
        if (state.showSnackBar) {
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(context).colorScheme.error,
              content: Text(state.showMessage),
              duration: const Duration(seconds: 2),
            ),
          );
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: [
                Expanded(
                  child: Center(
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 1 / 1.6,
                        crossAxisCount: 3,
                      ),
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ModalProgressHUD(
                          inAsyncCall:
                              state.availableEquipment[index].isLoading,
                          child: InkWell(
                            onTap: () {
                              BlocProvider.of<EquipmentCubit>(context)
                                  .toggleEquipmentSelection(
                                      state.availableEquipment[index]);
                            },
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                      height: 30.w,
                                      width: 30.w,
                                      child: Image.asset(
                                        AssetConstants.athleteImage,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Image.asset(
                                        state.availableEquipment[index]
                                                .isSelected
                                            ? AssetConstants.checkedCircle
                                            : AssetConstants.emptyCircle,
                                        width: 30,
                                        height: 30,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1.w),
                                Text(
                                  state.availableEquipment[index].name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                            BlocProvider.of<EquipmentCubit>(
                                                  context).toggleEquipmentLoader(state.availableEquipment[index]);
                                        },
                                        icon: const Icon(
                                          Icons.replay_outlined,
                                          color: Colors.white,
                                        )),
                                    IconButton(
                                        onPressed: () {
                                          BlocProvider.of<EquipmentCubit>(
                                                  context)
                                              .showSnackBar(
                                                  isError: false,
                                                  showMessage:
                                                      'Selected Equipment ${state.availableEquipment[index].name}');
                                        },
                                        icon: const Icon(
                                          Icons.message,
                                          color: Colors.white,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: state.availableEquipment.length,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
