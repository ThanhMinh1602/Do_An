import 'package:do_an_flutter/core/components/background/background_custom.dart';
import 'package:do_an_flutter/features/news/presentation/cubit/news_cubit.dart';
import 'package:do_an_flutter/features/news/presentation/widgets/desktop/news_desktop_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewDesktop extends StatefulWidget {
  const NewDesktop({super.key});

  @override
  State<NewDesktop> createState() => _NewDesktopState();
}

class _NewDesktopState extends State<NewDesktop> {
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
          child: NewsDesktopWidget(
            state: state,
          ),
        );
      },
    );
  }
}
