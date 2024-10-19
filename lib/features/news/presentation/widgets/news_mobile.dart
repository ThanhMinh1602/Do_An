import 'package:do_an_flutter/core/components/background/background_custom.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/features/news/presentation/cubit/news_cubit.dart';
import 'package:do_an_flutter/features/news/presentation/widgets/desktop/news_desktop_widget.dart';
import 'package:do_an_flutter/features/news/presentation/widgets/mobile/news_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsMobile extends StatefulWidget {
  const NewsMobile({super.key});

  @override
  State<NewsMobile> createState() => _NewsMobileState();
}

class _NewsMobileState extends State<NewsMobile> {
  @override
  void initState() {
    context.read<NewsCubit>().onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return BackgroundCustom(
          child: NewsMobileWidget(state: state),
        );
      },
    );
  }
}
