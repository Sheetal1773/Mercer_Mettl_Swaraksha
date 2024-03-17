// ignore_for_file: must_be_immutable

part of 'android_large_eleven_tab_container_bloc.dart';

/// Represents the state of AndroidLargeElevenTabContainer in the application.
class AndroidLargeElevenTabContainerState extends Equatable {
  AndroidLargeElevenTabContainerState(
      {this.androidLargeElevenTabContainerModelObj});

  AndroidLargeElevenTabContainerModel? androidLargeElevenTabContainerModelObj;

  @override
  List<Object?> get props => [
        androidLargeElevenTabContainerModelObj,
      ];
  AndroidLargeElevenTabContainerState copyWith(
      {AndroidLargeElevenTabContainerModel?
          androidLargeElevenTabContainerModelObj}) {
    return AndroidLargeElevenTabContainerState(
      androidLargeElevenTabContainerModelObj:
          androidLargeElevenTabContainerModelObj ??
              this.androidLargeElevenTabContainerModelObj,
    );
  }
}
