import 'package:do_an_flutter/core/components/appbar/app_bar_cuastom.dart';
import 'package:do_an_flutter/features/menu/presentation/page/app_menu.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(context),
      drawer: const AppMenu(),
      body: const Center(
        child: Text('body'),
      ),
    );
  }
}
