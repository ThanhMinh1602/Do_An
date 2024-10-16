import 'package:do_an_flutter/features/register/presentation/binding/register_binding.dart';
import 'package:do_an_flutter/features/register/presentation/widgets/register_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocProvider(
      create: RegisterBinding.generateCubit,
      child: RegisterWidget(),
    );
  }
}
