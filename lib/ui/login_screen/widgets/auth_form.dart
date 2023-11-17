import 'package:ekzh/cubits/card_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/navigation/route_name.dart';
import '../../../common/theme/app_colors.dart';
import '../../../cubits/app_cubit.dart';
import '../../../models/app_tabs.dart';
import '../../common/out_button.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  late TextEditingController loginController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;

  Future<void> getCards() async {
    final postsCubit = context.read<CardCubit>();
    await postsCubit.getCards();
  }

  @override
  void initState() {
    getCards();
    super.initState();
    loginController = TextEditingController()..text = 'test@mail.ru';
    passwordController = TextEditingController()..text = '123qwe123';
    formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CardCubit>().state;
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Номер сотрудника'),
          const SizedBox(height: 8),
          TextFormField(
            controller: loginController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите логин';
              }
              return null;
            },
          ),
          const SizedBox(height: 12),
          const Text('Код авторизации'),
          const SizedBox(height: 8),
          TextFormField(
            obscureText: true,
            controller: passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите пароль';
              }
              return null;
            },
          ),
          const SizedBox(height: 32),
          OutButton(
            contentColor: AppColors.blue,
            fillColor: AppColors.white,
            text: 'Войти',
            onTap: () {
              final future = BlocProvider.of<AppCubit>(context)
                  .tryAuth(loginController.text, passwordController.text);
              future.then((result) {
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<AppCubit>(context).updateTab(AppTabs.work);
                  context.goNamed(RouteName.base);
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
