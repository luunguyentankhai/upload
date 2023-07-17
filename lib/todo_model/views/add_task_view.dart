
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:settings_screen/todo_model/bottom_sheets/add_task_bottom_sheet_view.dart';
import 'package:settings_screen/todo_model/views_models/app_view_model.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context, viewModel, child) {
      return SizedBox(
        height: 60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: viewModel.clrLv3,
              foregroundColor: viewModel.clrLv1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          onPressed: () {
            HapticFeedback.mediumImpact();
            viewModel.bottomSheetBuilder(
                const AddTaskBottomSheetView(), context);
          },
          child: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      );
    });
  }
}
