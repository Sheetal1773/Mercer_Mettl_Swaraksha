import 'dart:io';

import 'package:image_picker/image_picker.dart';

import 'bloc/android_large_eleven_bloc.dart';
import 'models/android_large_eleven_model.dart';
import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';
import 'package:sheetal_kanojia_s_application4/widgets/custom_elevated_button.dart';

class AndroidLargeElevenPage extends StatefulWidget {
  const AndroidLargeElevenPage({Key? key}) : super(key: key);

  @override
  AndroidLargeElevenPageState createState() => AndroidLargeElevenPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeElevenBloc>(
      create: (context) => AndroidLargeElevenBloc(AndroidLargeElevenState(
        androidLargeElevenModelObj: AndroidLargeElevenModel(),
      ))
        ..add(AndroidLargeElevenInitialEvent()),
      child: AndroidLargeElevenPage(),
    );
  }
}

class AndroidLargeElevenPageState extends State<AndroidLargeElevenPage>
    with AutomaticKeepAliveClientMixin<AndroidLargeElevenPage> {
      File? _image; 
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeElevenBloc, AndroidLargeElevenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 0.07 * mediaQueryData.size.height,
                      ),

                      SizedBox(
                        height: 87.v,
                        width: 279.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                      // SizedBox(height: 31.v),
                      SizedBox(
                        height: 0.15 * mediaQueryData.size.height,
                      ),
                      _buildUploadSection(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildUploadSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (_image != null) _buildCapturedImage(),
            SizedBox(height: 10,),
            CustomElevatedButton(
              height: 51.v,
              text: "Click Here!   ",
              rightIcon: Icon(Icons.camera_alt),
              margin: EdgeInsets.only(bottom: 31.v),
             onPressed: () {
                _openCamera();
              },
            ),
            CustomElevatedButton(
              height: 51.v,
              text: "Details",
              margin: EdgeInsets.only(bottom: 31.v),
            ),
            CustomElevatedButton(
              height: 51.v,
              text: "lbl_upload".tr,
              margin: EdgeInsets.only(bottom: 42.v),
              width: 150.v,
            ),
            // SizedBox(
            //   width: 325.h,
            //   child: Text(
            //     "msg_upload_ka_option".tr,
            //     maxLines: 5,
            //     overflow: TextOverflow.ellipsis,
            //     style: CustomTextStyles.titleLargeMontserrat,
            //   ),
            // ),
            SizedBox(
              height: 0.2 * mediaQueryData.size.height,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "msg_note_your_identity".tr,
                  // textAlign:,
                  style: CustomTextStyles.titleSmallRed500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
    Future<void> _openCamera() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  // Function to build the widget displaying the captured image
  Widget _buildCapturedImage() {
    return Container(
      width: double.infinity,
      height: 250.0, // Adjust the height as needed
      decoration: BoxDecoration(
        image: DecorationImage(
          image: FileImage(_image!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
