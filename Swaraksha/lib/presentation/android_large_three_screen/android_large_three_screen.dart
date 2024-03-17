import 'bloc/android_large_three_bloc.dart';
import 'models/android_large_three_model.dart';
import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';
import 'package:sheetal_kanojia_s_application4/core/utils/validation_functions.dart';
import 'package:sheetal_kanojia_s_application4/widgets/custom_elevated_button.dart';
import 'package:sheetal_kanojia_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeThreeScreen extends StatelessWidget {
  AndroidLargeThreeScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeThreeBloc>(
        create: (context) => AndroidLargeThreeBloc(AndroidLargeThreeState(
            androidLargeThreeModelObj: AndroidLargeThreeModel()))
          ..add(AndroidLargeThreeInitialEvent()),
        child: AndroidLargeThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onErrorContainer,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 13.h, vertical: 22.v),
                    child: Column(children: [
                      SizedBox(height: 83.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: 203.v,
                              width: 217.h,
                              margin: EdgeInsets.only(right: 44.h),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgFemaleUser,
                                        height: 165.v,
                                        width: 101.h,
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.only(left: 41.h)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgWarningShield,
                                        height: 62.v,
                                        width: 66.h,
                                        alignment: Alignment.bottomRight,
                                        margin: EdgeInsets.only(
                                            right: 59.h, bottom: 38.v)),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("lbl_swaraksha".tr,
                                            style:
                                                theme.textTheme.headlineLarge))
                                  ]))),
                      SizedBox(height: 8.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 71.h),
                              child: Text("msg_voice_of_protection".tr,
                                  style:
                                      CustomTextStyles.titleSmallExtraBold))),
                      SizedBox(height: 86.v),
                      BlocSelector<AndroidLargeThreeBloc,
                              AndroidLargeThreeState, TextEditingController?>(
                          selector: (state) => state.userNameController,
                          builder: (context, userNameController) {
                            return CustomTextFormField(
                                controller: userNameController,
                                hintText: "lbl_username".tr,
                                validator: (value) {
                                  if (!isText(value)) {
                                    return "err_msg_please_enter_valid_text".tr;
                                  }
                                  return null;
                                },
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 28.h, vertical: 12.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillPurple,
                                fillColor: appTheme.purple50);
                          }),
                      SizedBox(height: 15.v),
                      BlocSelector<AndroidLargeThreeBloc,
                              AndroidLargeThreeState, TextEditingController?>(
                          selector: (state) => state.passwordController,
                          builder: (context, passwordController) {
                            return CustomTextFormField(
                                controller: passwordController,
                                hintText: "lbl_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: true,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 28.h, vertical: 13.v),
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillPurpleTL10,
                                fillColor: appTheme.purple5001);
                          }),
                      SizedBox(height: 27.v),
                      Container(
                          decoration: AppDecoration.outlineBlack,
                          child: Text("msg_forgot_password".tr,
                              style: CustomTextStyles
                                  .bodyLargeOpenSansBlack90001
                                  .copyWith(
                                      decoration: TextDecoration.underline))),
                      SizedBox(height: 10.v),
                      CustomElevatedButton(
                          height: 47.v,
                          text: "lbl_login2".tr,
                          buttonTextStyle: CustomTextStyles.titleLargeOpenSans,
                          onPressed: () {
                            onTapLogin(context);
                          }),
                      SizedBox(height: 87.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanaccount(context);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_don_t_have_an_account2".tr,
                                    style: CustomTextStyles
                                        .bodyLargeOpenSansWhiteA70018),
                                TextSpan(
                                    text: "lbl_sign_up".tr,
                                    style: theme.textTheme.titleMedium)
                              ]),
                              textAlign: TextAlign.left))
                    ])))));
  }

  /// Navigates to the androidLargeFourScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeFourScreen,
    );
  }

  /// Navigates to the androidLargeTwoScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeTwoScreen,
    );
  }
}
