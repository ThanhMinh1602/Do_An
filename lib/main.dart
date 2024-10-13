import 'package:do_an_flutter/core/routers/router_page.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/cubit/loading_page_cubit.dart';
import 'package:do_an_flutter/features/menu/presentation/cubit/app_menu_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ScreenUtilInit(
      designSize: Size(390, 760),
      minTextAdapt: true,
      ensureScreenSize: true,
      splitScreenMode: true,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LoadingPageCubit()),
        BlocProvider(create: (_) => AppMenuCubit())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Galaxy Web3',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}
