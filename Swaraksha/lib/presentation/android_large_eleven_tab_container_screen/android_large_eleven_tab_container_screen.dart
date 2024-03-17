import 'bloc/android_large_eleven_tab_container_bloc.dart';
import 'models/android_large_eleven_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_eleven_page/android_large_eleven_page.dart';

class AndroidLargeElevenTabContainerScreen extends StatefulWidget {
  const AndroidLargeElevenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AndroidLargeElevenTabContainerScreenState createState() =>
      AndroidLargeElevenTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeElevenTabContainerBloc>(
      create: (context) => AndroidLargeElevenTabContainerBloc(
          AndroidLargeElevenTabContainerState(
        androidLargeElevenTabContainerModelObj:
            AndroidLargeElevenTabContainerModel(),
      ))
        ..add(AndroidLargeElevenTabContainerInitialEvent()),
      child: AndroidLargeElevenTabContainerScreen(),
    );
  }
}

class AndroidLargeElevenTabContainerScreenState
    extends State<AndroidLargeElevenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeElevenTabContainerBloc,
        AndroidLargeElevenTabContainerState>(
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                          padding: EdgeInsets.only(right: 2.h),
                                          child: Text(
                                            "lbl_swaraksha".tr,
                                            style:
                                                theme.textTheme.headlineMedium,
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
                                            imagePath:
                                                ImageConstant.imgWarningShield,
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
                          SizedBox(height: 18.v),
                          Padding(
                            padding: EdgeInsets.only(left: 23.h),
                            child: Text(
                              "lbl_community".tr,
                              style: CustomTextStyles.titleLargeInterSemiBold,
                            ),
                          ),
                          SizedBox(height: 141.v),
                          _buildCommunitySection(context),
                          SizedBox(
                            height: 402.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                AndroidLargeElevenPage(),
                                AndroidLargeElevenPage(),
                              ],
                            ),
                          ),
                        ],
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

  /// Section Widget
  Widget _buildCommunitySection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45.h),
      child: Column(
        children: [
          Text(
            "lbl_help_others".tr,
            style: CustomTextStyles.titleLargeInterSemiBold,
          ),
          SizedBox(height: 33.v),
          Container(
            height: 51.v,
            width: 270.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.gray5002,
              labelStyle: TextStyle(
                fontSize: 20.fSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelColor: appTheme.gray5002,
              unselectedLabelStyle: TextStyle(
                fontSize: 20.fSize,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
              indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    "lbl_click_here".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_click_here".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
