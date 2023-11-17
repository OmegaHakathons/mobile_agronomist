import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/theme/app_colors.dart';
import '../../cubits/app_cubit.dart';
import '../../models/state/app_state.dart';
import '../../models/work.dart';
import 'widgets/begin_work.dart';
import 'widgets/work_info.dart';

class WorkPage extends StatelessWidget {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return state.currentWork == Work.stop ? BeginWork() : WorkInfo();
        },
      ),
    );
  }
}
