import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';
import 'bloc/android_large_eight_bloc.dart';
import 'models/android_large_eight_model.dart';

class AndroidLargeEightScreen extends StatelessWidget {
  const AndroidLargeEightScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeEightBloc>(
      create: (context) => AndroidLargeEightBloc(AndroidLargeEightState(
        androidLargeEightModelObj: AndroidLargeEightModel(),
      ))..add(AndroidLargeEightInitialEvent()),
      child: AndroidLargeEightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AndroidLargeEightBloc, AndroidLargeEightState>(
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
                      child: _buildAndroidLargeStack(context),
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

  Widget _buildAndroidLargeStack(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            height: 133.v,
            width: 330.h,
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
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 37.h),
                                child: Text(
                                  "lbl_swaraksha".tr,
                                  style: theme.textTheme.headlineMedium,
                                ),
                              ),
                            ),
                            SizedBox(height: 1.v),
                            Padding(
                              padding: EdgeInsets.only(right: 35.h),
                              child: Row(
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
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 19.v),
                      Text(
                        "msg_self_defense_techniques".tr,
                        style: CustomTextStyles.titleLargeInterSemiBold,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          FutureBuilder(
            future: _loadVideos(context),
            builder: (context, AsyncSnapshot<List<Map<String, String>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData && snapshot.data != null) {
                  return _buildVideoList(context, snapshot.data!);
                } else {
                  return _buildNoVideoWidget();
                }
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ],
      ),
    );
  }

  Future<List<Map<String, String>>> _loadVideos(BuildContext context) async {
    // Simulating loading videos from a JSON file or API
    await Future.delayed(Duration(seconds: 2));

    // Dummy data for videos
    return [
      {
        "thumbnail": "assets/thumbnail/thumbnail1.jpg",
        "title": "Video 1",
        "description": "This is the first video description.",
      },
      {
        "thumbnail": "assets/thumbnail/thumbnail2.jpg",
        "title": "Video 2",
        "description": "This is the second video description.",
      },
      {
        "thumbnail": "assets/thumbnail/thumbnail1.jpg",
        "title": "Video 3",
        "description": "This is the third video description.",
      }
      // Add more video entries as needed
    ];
  }
Widget _buildVideoList(BuildContext context, List<Map<String, String>> videos) {
  return ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: videos.length,
    itemBuilder: (context, index) {
      final video = videos[index];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Video Title
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              video["title"] ?? "",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          // Video Thumbnail
          Container(
            width: double.infinity,
            child: Image.asset(
              video["thumbnail"] ?? "",
              height: 200.0, // Adjust the height as needed
              fit: BoxFit.cover,
            ),
          ),
          // Video Description
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(video["description"] ?? ""),
          ),
          // Divider
          Divider(
            height: 1.0,
            color: Colors.grey,
          ),
        ],
      );
    },
  );
}

  Widget _buildNoVideoWidget() {
    return Center(
      child: Text(
        "No videos available. Please check again later.",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
