import 'package:do_an_flutter/features/dashboard/presentation/binding/dashboard_binding.dart';
import 'package:do_an_flutter/features/dashboard/presentation/widgets/dashboard_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocProvider(
      create: DashboardBinding.generateCubit,
      child: DashboardWidget(),
    );
  }
}
