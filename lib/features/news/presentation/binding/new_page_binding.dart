import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/features/news/presentation/cubit/news_cubit.dart';
import 'package:flutter/material.dart';

class NewPageBinding {
  static NewsCubit generateCubit(BuildContext context) {
    return NewsCubit(
      navigator: context.getNavigator,
    );
  }
}
