import 'package:do_an_flutter/features/loadingpage/presentation/binding/loading_binding.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/widgets/loading_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocProvider(
      create: LoadingBinding.generateCubit,
      child: LoadingWidget(),
    );
  }
}