import 'bloc/android_large_two_bloc.dart';
import 'models/android_large_two_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';
import 'package:sheetal_kanojia_s_application4/core/utils/validation_functions.dart';
import 'package:sheetal_kanojia_s_application4/widgets/custom_checkbox_button.dart';
import 'package:sheetal_kanojia_s_application4/widgets/custom_elevated_button.dart';
import 'package:sheetal_kanojia_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AndroidLargeTwoScreen extends StatelessWidget {
  AndroidLargeTwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwoBloc>(
        create: (context) => AndroidLargeTwoBloc(AndroidLargeTwoState(
            androidLargeTwoModelObj: AndroidLargeTwoModel()))
          ..add(AndroidLargeTwoInitialEvent()),
        child: AndroidLargeTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90003,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 17.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildUserImage(context),
                          SizedBox(height: 80.v),
                          _buildRegistrationForm(context),
                          SizedBox(height: 15.v),
                          _buildEmail(context),
                          SizedBox(height: 14.v),
                          _buildPhoneNumber(context),
                          SizedBox(height: 15.v),
                          _buildPassword(context),
                          SizedBox(height: 8.v),
                          _buildCardNumber1(context),
                          SizedBox(height: 8.v),
                          _buildCardNumber2(context),
                          SizedBox(height: 16.v),
                          _buildTermsAndConditionsCheckbox(context),
                          SizedBox(height: 5.v),
                          _buildNextButton(context),
                          SizedBox(height: 13.v),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtAlreadyamember(context);
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "msg_already_a_member2".tr,
                                            style: CustomTextStyles
                                                .titleSmallMontserratDeeporange5001Medium),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "lbl_log_in".tr,
                                            style: CustomTextStyles
                                                .titleSmallMontserratLightblue300)
                                      ]),
                                      textAlign: TextAlign.left))),
                          SizedBox(height: 5.v)
                        ])))));
  }

  /// Section Widget
  Widget _buildUserImage(BuildContext context) {
    return SizedBox(
        height: 89.v,
        width: 292.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgFemaleUser64x86,
              height: 64.v,
              width: 94.h,
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
  Widget _buildFullName(BuildContext context) {
    return BlocSelector<AndroidLargeTwoBloc, AndroidLargeTwoState,
            TextEditingController?>(
        selector: (state) => state.fullNameController,
        builder: (context, fullNameController) {
          return CustomTextFormField(
              width: 265.h,
              controller: fullNameController,
              hintText: "lbl_full_name".tr,
              alignment: Alignment.bottomLeft,
              suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 9.v, 15.h, 9.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 18.v,
                      width: 21.h)),
              suffixConstraints: BoxConstraints(maxHeight: 38.v),
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildRegistrationForm(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            height: 193.v,
            width: 303.h,
            margin: EdgeInsets.only(right: 17.h),
            child: Stack(alignment: Alignment.bottomLeft, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 65.h, vertical: 55.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgGroup5),
                              fit: BoxFit.cover)),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 53.v),
                            Text("lbl_register".tr,
                                style:
                                    CustomTextStyles.titleLargeMontserratGray50)
                          ]))),
              _buildFullName(context)
            ])));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40.h, right: 55.h),
        child: BlocSelector<AndroidLargeTwoBloc, AndroidLargeTwoState,
                TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                  controller: emailController,
                  hintText: "lbl_valid_email".tr,
                  hintStyle: CustomTextStyles.bodyMediumGray10001,
                  textInputType: TextInputType.emailAddress,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 7.v, 13.h, 7.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  suffixConstraints: BoxConstraints(maxHeight: 38.v),
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40.h, right: 55.h),
        child: BlocSelector<AndroidLargeTwoBloc, AndroidLargeTwoState,
                TextEditingController?>(
            selector: (state) => state.phoneNumberController,
            builder: (context, phoneNumberController) {
              return CustomTextFormField(
                  controller: phoneNumberController,
                  hintText: "lbl_phone_number".tr,
                  hintStyle: CustomTextStyles.bodyMediumDeeporange50,
                  textInputType: TextInputType.phone,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 12.v, 15.h, 6.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgSmartphone,
                          height: 18.v,
                          width: 21.h)),
                  suffixConstraints: BoxConstraints(maxHeight: 38.v),
                  validator: (value) {
                    if (!isValidPhone(value)) {
                      return "err_msg_please_enter_valid_phone_number".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40.h, right: 55.h),
        child: BlocBuilder<AndroidLargeTwoBloc, AndroidLargeTwoState>(
            builder: (context, state) {
          return CustomTextFormField(
              controller: state.passwordController,
              hintText: "lbl_strong_password".tr,
              hintStyle: theme.textTheme.bodyMedium!,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                  onTap: () {
                    context.read<AndroidLargeTwoBloc>().add(
                        ChangePasswordVisibilityEvent(
                            value: !state.isShowPassword));
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 8.v, 15.h, 11.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLockDeepOrange5002,
                          height: 18.v,
                          width: 21.h))),
              suffixConstraints: BoxConstraints(maxHeight: 38.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: state.isShowPassword);
        }));
  }

  /// Section Widget
  Widget _buildCardNumber1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40.h, right: 55.h),
        child: BlocSelector<AndroidLargeTwoBloc, AndroidLargeTwoState,
                TextEditingController?>(
            selector: (state) => state.cardNumber1Controller,
            builder: (context, cardNumber1Controller) {
              return CustomTextFormField(
                  controller: cardNumber1Controller,
                  hintText: "msg_aadhar_card_number".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  textInputType: TextInputType.number,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 8.v, 15.h, 11.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLockDeepOrange5002,
                          height: 18.v,
                          width: 21.h)),
                  suffixConstraints: BoxConstraints(maxHeight: 38.v),
                  validator: (value) {
                    if (!isNumeric(value)) {
                      return "err_msg_please_enter_valid_number".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildCardNumber2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40.h, right: 55.h),
        child: BlocSelector<AndroidLargeTwoBloc, AndroidLargeTwoState,
                TextEditingController?>(
            selector: (state) => state.cardNumber2Controller,
            builder: (context, cardNumber2Controller) {
              return CustomTextFormField(
                  controller: cardNumber2Controller,
                  hintText: "lbl_pan_card_number".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.number,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 8.v, 15.h, 11.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLockDeepOrange5002,
                          height: 18.v,
                          width: 21.h)),
                  suffixConstraints: BoxConstraints(maxHeight: 38.v),
                  validator: (value) {
                    if (!isNumeric(value)) {
                      return "err_msg_please_enter_valid_number".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildTermsAndConditionsCheckbox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 59.h),
        child: BlocSelector<AndroidLargeTwoBloc, AndroidLargeTwoState, bool?>(
            selector: (state) => state.termsAndConditionsCheckbox,
            builder: (context, termsAndConditionsCheckbox) {
              return CustomCheckboxButton(
                  text: "msg_by_checking_the".tr,
                  isExpandedText: true,
                  value: termsAndConditionsCheckbox,
                  onChange: (value) {
                    context
                        .read<AndroidLargeTwoBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 40.h, right: 55.h),
        onPressed: () {
          onTapNextButton(context);
        });
  }

  /// Navigates to the androidLargeFourScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeFourScreen,
    );
  }

  /// Navigates to the androidLargeThreeScreen when the action is triggered.
  onTapTxtAlreadyamember(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.androidLargeThreeScreen,
    );
  }
}
