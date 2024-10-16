import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/features/register/presentation/cubit/register_cubit.dart';
import 'package:flutter/material.dart';

class RegisterBinding {
  static RegisterCubit generateCubit(BuildContext context) {
    return RegisterCubit(
      navigator: context.getNavigator,
    );
  }
}
