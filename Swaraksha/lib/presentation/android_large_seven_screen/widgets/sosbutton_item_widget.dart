import '../models/sosbutton_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sheetal_kanojia_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class SosbuttonItemWidget extends StatelessWidget {
  SosbuttonItemWidget(
    this.sosbuttonItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SosbuttonItemModel sosbuttonItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: sosbuttonItemModelObj?.alertMessage,
          height: 67.adaptSize,
          width: 67.adaptSize,
          margin: EdgeInsets.only(bottom: 15.v),
        ),
        Expanded(
          child: Container(
            width: 248.h,
            margin: EdgeInsets.only(left: 15.h),
            child: Text(
              sosbuttonItemModelObj.alertText!,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ),
      ],
    );
  }
}
