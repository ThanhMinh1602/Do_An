import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/cubit/loading_cubit.dart';
import 'package:flutter/widgets.dart';

class LoadingBinding {
  static LoadingCubit generateCubit(BuildContext context) {
    return LoadingCubit(
      navigator: context.getNavigator,
    );
  }
}
