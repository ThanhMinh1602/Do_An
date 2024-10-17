import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:do_an_flutter/features/dashboard/presentation/widgets/trade_table_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/page/loading_page.dart';
import 'package:do_an_flutter/features/main/presentation/page/main_page.dart';
import 'package:do_an_flutter/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:
          context.isDesktop ? const Size(1440, 900) : const Size(390, 760),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Galaxy Web3',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
            useMaterial3: true,
            textTheme: GoogleFonts.robotoTextTheme(),
          ),
          home: const DashboardPage(),
        );
      },
    );
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor.withOpacity(0.7),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TradeTableWidget()),
    );
  }
}
