import 'package:do_an_flutter/features/logged_main/presentation/binding/logged_main_binding.dart';
import 'package:do_an_flutter/features/logged_main/presentation/logged_main_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoggedMainPage extends StatelessWidget {
  const LoggedMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocProvider(
      create: LoggedMainBinding.generate,
      child: LoggedMainWidget(),
    );
  }
}
