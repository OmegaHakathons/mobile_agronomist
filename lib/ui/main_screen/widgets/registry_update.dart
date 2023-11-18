import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../common/theme/app_colors.dart';
import '../../../cubits/card_cubit.dart';
// import 'package:intl/intl.dart';

class RegistryUpdate extends StatefulWidget {
  final bool isConnect;
  const RegistryUpdate({
    super.key,
    required this.isConnect,
  });

  @override
  State<RegistryUpdate> createState() => _RegistryUpdateState();
}

class _RegistryUpdateState extends State<RegistryUpdate> {
  DateTime? lastUpdate;
  bool isLoading = false;

  Future<void> getCards() async {
    setState(() {
      isLoading = true;
    });
    final postsCubit = context.read<CardCubit>();
    await postsCubit.getCards();
    await lastTime();
    setState(() {
      isLoading = false;
    });
  }

  Future<void> lastTime() async {
    final postsCubit = context.read<CardCubit>();
    lastUpdate = await postsCubit.getLastUpdateDateTime();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    lastTime();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? _RegistryUpdating()
        : InkWell(
            onTap: () async {
              if (widget.isConnect) {
                await getCards();
              }
            },
            child: Ink(
                child: Row(
              children: [
                Icon(
                  widget.isConnect ? Icons.update : Icons.update_disabled,
                  color: AppColors.grey,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.isConnect
                          ? 'Обновить реестр'
                          : 'Невозможно обновить реестр'),
                      Text(
                        lastUpdate != null
                            ? 'последнее обновление ${DateFormat('dd.MM.yyyy').format(lastUpdate!)} в ${DateFormat('HH:mm').format(lastUpdate!)}'
                            : 'Обновлений не было',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            )),
          );
  }
}

class _RegistryUpdating extends StatelessWidget {
  const _RegistryUpdating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox.square(
          dimension: 24,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              AppColors.grey,
            ),
            strokeWidth: 2,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          'Реестр обновляется',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColors.grey),
        ),
      ],
    );
  }
}
