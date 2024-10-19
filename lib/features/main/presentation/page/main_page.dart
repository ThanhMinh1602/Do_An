import 'package:do_an_flutter/core/res/responsive.dart';
import 'package:do_an_flutter/features/main/presentation/binding/main_binding.dart';
import 'package:do_an_flutter/features/main/presentation/page/main_desktop.dart';
import 'package:do_an_flutter/features/main/presentation/page/main_mobile.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocProvider(
      create: MainBinding.generateCubit,
      child: ResponsiveSystem(
        mobile: MainMobile(),
        tablet: MainDesktop(),
        desktop: MainDesktop(),
      ),
    );
  }
}
