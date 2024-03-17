import 'bloc/android_large_ten_bloc.dart';
import 'models/android_large_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';
import 'package:sheetal_kanojia_s_application4/widgets/custom_elevated_button.dart';

class AndroidLargeTenScreen extends StatelessWidget {
  const AndroidLargeTenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTenBloc>(
      create: (context) => AndroidLargeTenBloc(AndroidLargeTenState(
        androidLargeTenModelObj: AndroidLargeTenModel(),
      ))
        ..add(AndroidLargeTenInitialEvent()),
      child: AndroidLargeTenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeTenBloc, AndroidLargeTenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 17.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 48.h,
                          bottom: 321.v,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                height: 87.v,
                                width: 279.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgFemaleUser64x86,
                                      height: 64.v,
                                      width: 94.h,
                                      alignment: Alignment.topLeft,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 1.h),
                                              child: Text(
                                                "lbl_swaraksha".tr,
                                                style: theme
                                                    .textTheme.headlineMedium,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 1.v),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgWarningShield,
                                                height: 45.v,
                                                width: 55.h,
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 13.h,
                                                  top: 2.v,
                                                  bottom: 23.v,
                                                ),
                                                child: Text(
                                                  "msg_voice_of_protection".tr,
                                                  style: theme
                                                      .textTheme.titleSmall,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 18.v),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 23.h),
                                child: Text(
                                  "lbl_panic_button".tr,
                                  style:
                                      CustomTextStyles.titleLargeInterSemiBold,
                                ),
                              ),
                            ),
                            SizedBox(height: 108.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgHomeAlarm,
                              height: 95.v,
                              width: 102.h,
                              margin: EdgeInsets.only(right: 81.h),
                            ),
                            SizedBox(height: 36.v),
                            CustomElevatedButton(
                              text: "lbl_start".tr,
                              margin: EdgeInsets.only(left: 47.h),
                            ),
                            SizedBox(height: 18.v),
                            CustomElevatedButton(
                              text: "lbl_stop".tr,
                              margin: EdgeInsets.only(left: 47.h),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
