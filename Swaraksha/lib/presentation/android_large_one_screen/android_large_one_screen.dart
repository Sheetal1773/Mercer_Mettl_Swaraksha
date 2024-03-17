import 'bloc/android_large_one_bloc.dart';
import 'models/android_large_one_model.dart';
import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeOneBloc>(
        create: (context) => AndroidLargeOneBloc(AndroidLargeOneState(
            androidLargeOneModelObj: AndroidLargeOneModel()))
          ..add(AndroidLargeOneInitialEvent()),
        child: AndroidLargeOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeOneBloc, AndroidLargeOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray90001,
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 206.v),
                  child: Column(children: [
                    SizedBox(
                        height: 203.v,
                        width: 217.h,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFemaleUser,
                              height: 165.v,
                              width: 101.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 41.h),
                              onTap: () {
                                onTapImgFemaleUser(context);
                              }),
                          CustomImageView(
                              imagePath: ImageConstant.imgWarningShield,
                              height: 62.v,
                              width: 66.h,
                              alignment: Alignment.bottomRight,
                              margin:
                                  EdgeInsets.only(right: 59.h, bottom: 38.v)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("lbl_swaraksha".tr,
                                  style: theme.textTheme.headlineLarge))
                        ])),
                    SizedBox(height: 8.v),
                    Text("msg_voice_of_protection".tr,
                        style: CustomTextStyles.titleSmallExtraBold),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Navigates to the androidLargeTwoScreen when the action is triggered.
  onTapImgFemaleUser(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeTwoScreen,
    );
  }
}
