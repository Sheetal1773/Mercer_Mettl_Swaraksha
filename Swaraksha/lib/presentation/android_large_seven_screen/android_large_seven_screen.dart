import '../android_large_eight_screen/android_large_eight_screen.dart';
import '../android_large_eight_screen/bloc/android_large_eight_bloc.dart';
import '../android_large_eleven_page/android_large_eleven_page.dart';
import '../android_large_seven_screen/widgets/sosbutton_item_widget.dart';
import '../android_large_twelve_screen/android_large_twelve_screen.dart';
import '../android_large_twelve_screen/bloc/android_large_twelve_bloc.dart';
import 'bloc/android_large_seven_bloc.dart';
import 'models/android_large_seven_model.dart';
import 'models/sosbutton_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';

class AndroidLargeSevenScreen extends StatelessWidget {
  const AndroidLargeSevenScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSevenBloc>(
      create: (context) => AndroidLargeSevenBloc(AndroidLargeSevenState(
        androidLargeSevenModelObj: AndroidLargeSevenModel(),
      ))
        ..add(AndroidLargeSevenInitialEvent()),
      child: AndroidLargeSevenScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray900,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 17.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 87.v,
                  width: 279.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFemaleUser64x86,
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
                                padding: EdgeInsets.only(right: 1.h),
                                child: Text(
                                  "lbl_swaraksha".tr,
                                  style: theme.textTheme.headlineMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 1.v),
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
                                    left: 13.h,
                                    top: 2.v,
                                    bottom: 23.v,
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
                SizedBox(height: 9.v),
                Container(
                  width: 287.h,
                  margin: EdgeInsets.only(
                    left: 15.h,
                    right: 57.h,
                  ),
                  child: Text(
                    "msg_speak_out_against".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleLargeInter,
                  ),
                ),
                SizedBox(height: 35.v),
                _buildSOSButton(context),
                GestureDetector(
  onTap: () {
    // Navigate to the desired page when the column is clicked
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AndroidLargeElevenPage(),
      ),
    );
  },
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              "COMMUNITY\nHELP AND SUPPORT EACH ",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontFamily: 'Inter',
                height: 1.6,
              ),
              textAlign: TextAlign.end,
            ),
          ),
          Container(
            width: 61,
            height: 62,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_handle_with_care.png'),
              ),
            ),
          ),
        ],
      ),
    ],
  ),
)

              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSOSButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 19.h),
      child: BlocBuilder<AndroidLargeSevenBloc, AndroidLargeSevenState>(
        builder: (context, state) {
          if (state.androidLargeSevenModelObj != null &&
              state.androidLargeSevenModelObj!.sosbuttonItemList.isNotEmpty) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: state.androidLargeSevenModelObj!.sosbuttonItemList
                  .map(
                    (model) => GestureDetector(
                      onTap: () {
                        print("GestureDetector tapped!");
                        print("hello i am visible?");
                        // Dispatch events based on the button clicked
                        if (model.id == "sosButton1") {
                          context
                              .read<AndroidLargeSevenBloc>()
                              .add(NavigateToSOSButton1Event());
                        } else if (model.id == "sosButton2") {
                          context
                              .read<AndroidLargeSevenBloc>()
                              .add(NavigateToSOSButton2Event());
                        } else if (model.id == "sosButton3") {
                          context
                              .read<AndroidLargeSevenBloc>()
                              .add(NavigateToSOSButton3Event(context: context));
                        } else if (model.id == "sosButton4") {
                          context
                              .read<AndroidLargeSevenBloc>()
                              .add(NavigateToSOSButton4Event(context: context));
                        } else if (model.id == "sosButton5") {
                          context
                              .read<AndroidLargeSevenBloc>()
                              .add(NavigateToSOSButton5Event(context: context));
                        }

                        // You can remove the Navigator.push code here
                      },
                      child: Column(
                        children: [
                          SosbuttonItemWidget(model),
                          SizedBox(height: 24.v),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            );
          } else {
            // Handle the case when the sosbuttonItemList is empty or null
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
