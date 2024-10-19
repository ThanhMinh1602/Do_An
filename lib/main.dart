import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:do_an_flutter/features/dashboard/presentation/widgets/trade_table_widget.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/page/loading_page.dart';
import 'package:do_an_flutter/features/main/presentation/page/main_page.dart';
import 'package:do_an_flutter/features/trading/presentation/page/trading_page.dart';
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
            fontFamily: 'FSProDisplay',
          ),
          home: const MainPage(),
          // home: TradingPage(),
        );
      },
    );
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Weight: 100w',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w100),
            ),
            Text(
              'Weight: 200',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w200),
            ),
            Text(
              'Weight: 300',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w300),
            ),
            Text(
              'Weight: 400 (Normal)',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
            ),
            Text(
              'Weight: 500',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
            ),
            Text(
              'Weight: 600',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
            ),
            Text(
              'Weight: 700 (Bold)',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
            ),
            Text(
              'Weight: 800',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w800),
            ),
            Text(
              'Weight: 900',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }
}
//ss