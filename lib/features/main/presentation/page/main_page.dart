import 'package:do_an_flutter/features/main/presentation/binding/main_binding.dart';
import 'package:do_an_flutter/features/main/presentation/widgets/main_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocProvider(
      create: MainBinding.generateCubit,
      child: MainWidget(),
    );
  }
}
