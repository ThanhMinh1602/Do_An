import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:do_an_flutter/features/main/presentation/page/main_page.dart';
import 'package:do_an_flutter/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        );
      },
    );
  }
}

class ResponsiveContainer extends StatelessWidget {
  const ResponsiveContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // Thiết lập kích thước dựa trên thiết bị
          width: 100.w, // Kích thước chiều rộng
          height: 100.h, // Kích thước chiều cao
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FittedBox(
                child: Image.asset(
                  'assets/images/sample_image.png', // Đường dẫn đến hình ảnh
                  fit: BoxFit
                      .cover, // Điều chỉnh hình ảnh cho phù hợp với kích thước của Container
                ),
              ),
              SizedBox(height: 8.h), // Khoảng cách giữa hình ảnh và văn bản
              FittedBox(
                child: Text(
                  'Đây là một đoạn văn bản dài để kiểm tra khả năng phản hồi của Container.',
                  style: TextStyle(
                    fontSize: 16.sp, // Kích thước văn bản tự động thay đổi
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center, // Canh giữa văn bản
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
