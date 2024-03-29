import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Four".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Five".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Eight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Ten".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.androidLargeTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Android Large - Eleven - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .androidLargeElevenTabContainerScreen),
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

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
