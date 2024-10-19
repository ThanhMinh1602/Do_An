import 'package:do_an_flutter/core/res/responsive.dart';
import 'package:do_an_flutter/features/news/presentation/binding/new_page_binding.dart';
import 'package:do_an_flutter/features/news/presentation/widgets/new_desktop.dart';
import 'package:do_an_flutter/features/news/presentation/widgets/news_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BlocProvider(
      create: NewPageBinding.generateCubit,
      child: ResponsiveSystem(
        mobile: NewsMobile(),
        tablet: NewDesktop(),
        desktop: NewDesktop(),
      ),
    );
  }
}
