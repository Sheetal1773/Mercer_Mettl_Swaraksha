// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sosbutton_item_model.dart';

/// This class defines the variables used in the [android_large_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLargeSevenModel extends Equatable {
  AndroidLargeSevenModel({this.sosbuttonItemList = const []}) {}

  List<SosbuttonItemModel> sosbuttonItemList;

  AndroidLargeSevenModel copyWith(
      {List<SosbuttonItemModel>? sosbuttonItemList}) {
    return AndroidLargeSevenModel(
      sosbuttonItemList: sosbuttonItemList ?? this.sosbuttonItemList,
    );
  }

  @override
  List<Object?> get props => [sosbuttonItemList];
}
