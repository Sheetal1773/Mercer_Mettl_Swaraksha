import 'bloc/android_large_four_bloc.dart';
import 'models/android_large_four_model.dart';
import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';
import 'package:sheetal_kanojia_s_application4/widgets/custom_elevated_button.dart';

class AndroidLargeFourScreen extends StatelessWidget {
  const AndroidLargeFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeFourBloc>(
        create: (context) => AndroidLargeFourBloc(AndroidLargeFourState(
            androidLargeFourModelObj: AndroidLargeFourModel()))
          ..add(AndroidLargeFourInitialEvent()),
        child: AndroidLargeFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AndroidLargeFourBloc, AndroidLargeFourState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray90004,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 20.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                          _buildFemaleUser(context),
                          SizedBox(height: 32.v),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: 313.h,
                                  margin:
                                      EdgeInsets.only(left: 19.h, right: 27.h),
                                  child: Text("msg_enter_verification".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.displaySmall!
                                          .copyWith(height: 1.39)))),
                          SizedBox(height: 21.v),
                          Container(
                              width: 273.h,
                              margin: EdgeInsets.only(left: 9.h, right: 77.h),
                              child: Text("msg_enter_code_that".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodyMediumRobotoWhiteA70001
                                      .copyWith(height: 1.43))),
                          SizedBox(height: 32.v),
                          Padding(
                              padding: EdgeInsets.only(left: 71.h),
                              child: Row(children: [
                                Container(
                                    decoration: AppDecoration.fillPurple,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapView(context);
                                        },
                                        child: Container(
                                            height: 38.v,
                                            width: 37.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray40033,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10.h))))),
                                Container(
                                    margin: EdgeInsets.only(left: 22.h),
                                    decoration: AppDecoration.fillGray40033
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Container(
                                        margin: EdgeInsets.only(left: 110.h),
                                        decoration: AppDecoration.fillPurple,
                                        child: Container(
                                            height: 38.v,
                                            width: 1.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.gray40033))))
                              ])),
                          SizedBox(height: 34.v),
                          CustomElevatedButton(
                              height: 44.v,
                              text: "lbl_submit".tr.toUpperCase(),
                              margin: EdgeInsets.only(left: 11.h, right: 7.h),
                              buttonStyle: CustomButtonStyles.fillGray,
                              buttonTextStyle: CustomTextStyles
                                  .titleMediumRobotoPrimaryContainer,
                              alignment: Alignment.center),
                          SizedBox(height: 22.v),
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_resend_code".tr,
                                  style:
                                      CustomTextStyles.bodyLargeRobotoBlue300)),
                          SizedBox(height: 58.v),
                          _buildSystemKeyboard(context)
                        ])))
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildFemaleUser(BuildContext context) {
    return SizedBox(
        height: 89.v,
        width: 288.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFemaleUser64x90,
              height: 64.v,
              width: 90.h,
              alignment: Alignment.topLeft),
          Align(
              alignment: Alignment.bottomRight,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("lbl_swaraksha".tr,
                        style: theme.textTheme.headlineMedium)),
                SizedBox(height: 2.v),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgWarningShield,
                          height: 45.v,
                          width: 55.h),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h, bottom: 24.v),
                          child: Text("msg_voice_of_protection".tr,
                              style: theme.textTheme.titleSmall))
                    ])
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildSystemKeyboard(BuildContext context) {
    return SizedBox(
        height: 291.v,
        width: 372.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 291.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimaryContainer))),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 12.h, top: 8.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: IntrinsicWidth(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              Container(
                                  width: 33.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 7.h, vertical: 6.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_q".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_w".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_e".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_r".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_t".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_y".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.all(7.h),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_u".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 13.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_i".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.all(7.h),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_o".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 9.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_p".tr,
                                      style: theme.textTheme.titleLarge))
                            ]))),
                    SizedBox(height: 11.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          width: 33.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.h, vertical: 7.v),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Text("lbl_a".tr,
                              style: theme.textTheme.titleLarge)),
                      Container(
                          width: 33.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.h, vertical: 7.v),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Text("lbl_s".tr,
                              style: theme.textTheme.titleLarge)),
                      Container(
                          width: 33.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.h, vertical: 7.v),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Text("lbl_d".tr,
                              style: theme.textTheme.titleLarge)),
                      Container(
                          width: 33.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.h, vertical: 7.v),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Text("lbl_f".tr,
                              style: theme.textTheme.titleLarge)),
                      Container(
                          width: 33.h,
                          margin: EdgeInsets.only(left: 7.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Text("lbl_g".tr,
                              style: theme.textTheme.titleLarge)),
                      Container(
                          width: 33.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.all(7.h),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Text("lbl_h".tr,
                              style: theme.textTheme.titleLarge)),
                      Container(
                          width: 33.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 7.v),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Text("lbl_j".tr,
                              style: theme.textTheme.titleLarge)),
                      Container(
                          width: 33.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.h, vertical: 7.v),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Text("lbl_k".tr,
                              style: theme.textTheme.titleLarge)),
                      Container(
                          width: 33.h,
                          margin: EdgeInsets.only(left: 6.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.h, vertical: 7.v),
                          decoration: AppDecoration.outlineBlack90001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Text("lbl_l".tr,
                              style: theme.textTheme.titleLarge))
                    ]),
                    SizedBox(height: 11.v),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: IntrinsicWidth(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              SizedBox(
                                  height: 43.v,
                                  width: 44.h,
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGrid,
                                            height: 43.v,
                                            width: 44.h,
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArrowRight,
                                            height: 16.v,
                                            width: 20.h,
                                            alignment: Alignment.center)
                                      ])),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 14.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_z".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_x".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_c".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 7.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_v".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_b".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.all(7.h),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_n".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  width: 33.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 6.h, vertical: 7.v),
                                  decoration: AppDecoration.outlineBlack90001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4),
                                  child: Text("lbl_m".tr,
                                      style: theme.textTheme.titleLarge)),
                              Container(
                                  height: 43.v,
                                  width: 44.h,
                                  margin: EdgeInsets.only(left: 14.h),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgTelevision,
                                            height: 43.v,
                                            width: 44.h,
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgClose,
                                            height: 17.v,
                                            width: 23.h,
                                            alignment: Alignment.center)
                                      ]))
                            ]))),
                    SizedBox(height: 11.v),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: IntrinsicWidth(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              _buildReturnVar(context, labelText: "lbl_123".tr),
                              Container(
                                  height: 43.v,
                                  width: 190.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBackground,
                                            height: 43.v,
                                            width: 190.h,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 7.v),
                                                child: Text("lbl_space".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(left: 6.h),
                                  child: _buildReturnVar(context,
                                      labelText: "lbl_return".tr))
                            ]))),
                    SizedBox(height: 12.v),
                    Padding(
                        padding: EdgeInsets.only(left: 11.h, right: 14.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imageNotFound,
                                  height: 32.v,
                                  width: 27.h,
                                  margin: EdgeInsets.only(top: 9.v)),
                              CustomImageView(
                                  imagePath: ImageConstant.img,
                                  height: 33.v,
                                  width: 22.h,
                                  margin: EdgeInsets.only(bottom: 8.v))
                            ]))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildReturnVar(
    BuildContext context, {
    required String labelText,
  }) {
    return SizedBox(
        height: 43.v,
        width: 91.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTelevision,
              height: 43.v,
              width: 91.h,
              radius: BorderRadius.circular(4.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 10.v),
                  child: Text(labelText,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyLarge!
                          .copyWith(color: theme.colorScheme.onPrimary))))
        ]));
  }

  /// Navigates to the androidLargeFiveScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeFiveScreen,
    );
  }
}
