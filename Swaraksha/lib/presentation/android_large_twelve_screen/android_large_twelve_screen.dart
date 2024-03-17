import 'bloc/android_large_twelve_bloc.dart';
import 'models/android_large_twelve_model.dart';
import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';
import 'package:sheetal_kanojia_s_application4/core/utils/validation_functions.dart';
import 'package:sheetal_kanojia_s_application4/widgets/custom_elevated_button.dart';
import 'package:sheetal_kanojia_s_application4/widgets/custom_text_form_field.dart';

class AndroidLargeTwelveScreen extends StatelessWidget {
  AndroidLargeTwelveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeTwelveBloc>(
      create: (context) => AndroidLargeTwelveBloc(AndroidLargeTwelveState(
        androidLargeTwelveModelObj: AndroidLargeTwelveModel(),
      ))
        ..add(AndroidLargeTwelveInitialEvent()),
      child: AndroidLargeTwelveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 10.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 89.v,
                  width: 284.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFemaleUser,
                        height: 64.v,
                        width: 86.h,
                        alignment: Alignment.topLeft,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "lbl_swaraksha".tr,
                                style: theme.textTheme.headlineMedium,
                              ),
                            ),
                            SizedBox(height: 2.v),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgWarningShield,
                                  height: 45.v,
                                  width: 55.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 24.h,
                                    bottom: 24.v,
                                  ),
                                  child: Text(
                                    "msg_voice_of_protection".tr,
                                    style: theme.textTheme.titleSmall,
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
                SizedBox(height: 21.v),
                Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Text(
                    "msg_enter_emergency".tr,
                    style: CustomTextStyles.bodyLargeOpenSansWhiteA700,
                  ),
                ),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 36.h,
                    right: 59.h,
                  ),
                  child: BlocSelector<AndroidLargeTwelveBloc,
                      AndroidLargeTwelveState, TextEditingController?>(
                    selector: (state) => state.phoneNumberController,
                    builder: (context, phoneNumberController) {
                      return CustomTextFormField(
                        controller: phoneNumberController,
                        hintText: "lbl_phone_number".tr,
                        textInputType: TextInputType.phone,
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 12.v, 15.h, 6.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSmartphone,
                            height: 18.v,
                            width: 21.h,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 38.v,
                        ),
                        validator: (value) {
                          if (!isValidPhone(value)) {
                            return "err_msg_please_enter_valid_phone_number".tr;
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 28.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 36.h,
                    right: 59.h,
                  ),
                  child: BlocSelector<AndroidLargeTwelveBloc,
                      AndroidLargeTwelveState, TextEditingController?>(
                    selector: (state) => state.phoneNumberController1,
                    builder: (context, phoneNumberController1) {
                      return CustomTextFormField(
                        controller: phoneNumberController1,
                        hintText: "lbl_phone_number".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.phone,
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 12.v, 15.h, 6.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSmartphone,
                            height: 18.v,
                            width: 21.h,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 38.v,
                        ),
                        validator: (value) {
                          if (!isValidPhone(value)) {
                            return "err_msg_please_enter_valid_phone_number".tr;
                          }
                          return null;
                        },
                      );
                    },
                  ),
                ),
                Spacer(
                  flex: 70,
                ),
                CustomElevatedButton(
                  text: "lbl_save".tr.toUpperCase(),
                  margin: EdgeInsets.only(
                    left: 36.h,
                    right: 58.h,
                  ),
                ),
                Spacer(
                  flex: 29,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
