import 'dart:ui';

import 'package:do_an_flutter/core/components/appbar/app_bar_mobile.dart';
import 'package:do_an_flutter/core/components/background/background_custom.dart';
import 'package:do_an_flutter/core/components/bottom_sheets/bottom_sheets_custom.dart';
import 'package:do_an_flutter/core/components/bottombar/bottom_bar_custom.dart';
import 'package:do_an_flutter/core/components/button/custom_button.dart';
import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/format_string_utils.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:do_an_flutter/features/register/presentation/cubit/register_cubit.dart';
import 'package:do_an_flutter/gen/assets.gen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../../../core/constants/app_style.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetsState();
}

class _RegisterWidgetsState extends State<RegisterWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.appBarColor,
        appBar: AppBarMobile(
          context,
        ),
        bottomNavigationBar: _buildDisclaimerBottomSheets(context,
            onTapRegister: () => context.read<RegisterCubit>().onTapRegister()),
        body: BackgroundCustom(
          child: ListView(
            padding: EdgeInsets.all(24.0.w),
            children: [
              Column(
                children: [
                  _buildTopWalleCard(),
                  _buildBottomWalletCard(),
                  spaceH16,
                  _builddTextField(),
                  spaceH16,
                  Container(
                    width: double.infinity,
                    height: 120.h,
                    decoration: BoxDecoration(
                      border: GradientBoxBorder(
                          gradient: AppColor.buildGradient(opacity: 0.2)),
                      borderRadius: BorderRadius.circular(8.0.r),
                      image: DecorationImage(
                          image: AssetImage(
                            Assets.images.joinNowBanner.path,
                          ),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Join Now!',
                            style: AppStyle.bold_36
                                .copyWith(color: AppColor.whiteColor)),
                        Text('And leverage 1000 times of your funds',
                            style: AppStyle.semibold_16),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  BottomBarCustom _buildDisclaimerBottomSheets(BuildContext context,
      {Function? onTapRegister}) {
    return BottomBarCustom(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              spaceW8,
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'I have read and agree to the ',
                    style: AppStyle.regular_14),
                TextSpan(
                    text: 'Disclaimer',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        BottomSheetsCustom.showBottomSheet(context,
                            title: 'Disclaimer',
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Text(
                                  'What is Lorem Ipsum?',
                                  style: AppStyle.regular_14,
                                ),
                                spaceH10,
                                Text(
                                  textAlign: TextAlign.justify,
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                  style: AppStyle.regular_14,
                                ),
                                spaceH10,
                                Text(
                                  'Where does it come from?',
                                  style: AppStyle.regular_14,
                                ),
                                spaceH10,
                                Text(
                                  textAlign: TextAlign.justify,
                                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                                  style: AppStyle.regular_14,
                                ),
                                spaceH10,
                                Text(
                                  textAlign: TextAlign.justify,
                                  'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
                                  style: AppStyle.regular_14,
                                ),
                              ],
                            ));
                      },
                    style: AppStyle.regular_14
                        .copyWith(color: AppColor.primaryColor))
              ]))
            ],
          ),
          spaceH12,
          CustomButton(
            btnTxt: 'Register',
            icon: Assets.icons.arrowRightFill.path,
            gradient: AppColor.buildGradient(),
            onTap: onTapRegister,
          )
        ],
      ),
    );
  }

  Container _builddTextField() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.0.h),
      decoration: BoxDecoration(
          color: AppColor.grey900,
          border: Border.all(color: AppColor.grey800!),
          borderRadius: BorderRadius.circular(12.0.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ref.Address*',
            style: AppStyle.regular_16.copyWith(color: AppColor.grey700),
          ),
          TextField(
            style: AppStyle.regular_16,
            decoration: InputDecoration(
              isDense: true,
              constraints: BoxConstraints(maxHeight: 20.0.h),
              contentPadding: const EdgeInsets.all(0),
              border: InputBorder.none,
              hintText: 'Enter',
              hintStyle: AppStyle.regular_16.copyWith(color: AppColor.grey700),
            ),
          )
        ],
      ),
    );
  }

  GradientContainerCustom _buildBottomWalletCard() {
    return GradientContainerCustom(
      width: double.infinity,
      blur: 120,
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.0.r)),
      padding: EdgeInsets.all(16.0.w),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        separatorBuilder: (_, __) => spaceH12,
        itemBuilder: (context, index) {
          return GradientContainerCustom(
            padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 16.0.w),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12.0.w,
                  backgroundImage: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2018/09/28/08/40/dragon-3708746_960_720.png'),
                ),
                spaceW8,
                Expanded(
                  child:
                      Text('data'.toUpperCase(), style: AppStyle.semibold_18),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('12.397.45', style: AppStyle.semibold_14),
                    Text('542,54', style: AppStyle.regular_12),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  GradientContainerCustom _buildTopWalleCard() {
    return GradientContainerCustom(
      width: double.infinity,
      blur: 50,
      padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 16.0.w),
      borderGradient: AppColor.buildGradient(opacity: 0.2),
      gradient: AppColor.buildGradient(opacity: 0.1),
      borderRadius: BorderRadius.vertical(top: Radius.circular(12.0.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Wallet',
            style: AppStyle.regular_16,
          ),
          spaceH12,
          Row(
            children: [
              CircleAvatar(
                radius: 24.0.w,
                backgroundImage: const NetworkImage(
                  'https://cdn.pixabay.com/photo/2024/01/12/08/48/traditional-8503473_960_720.jpg',
                ),
              ),
              spaceW12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        FormatStringUtils.shortenString(
                            '136123981273127398123'),
                        style: AppStyle.bold_20),
                    spaceH4,
                    Text('Metamask', style: AppStyle.regular_16),
                  ],
                ),
              ),
              spaceW12,
              Icon(
                Icons.logout_outlined,
                size: 24.sp,
                color: AppColor.grey500,
              )
            ],
          )
        ],
      ),
    );
  }
}
