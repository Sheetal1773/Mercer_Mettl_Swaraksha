// ignore_for_file: must_be_immutable

part of 'android_large_twelve_bloc.dart';

/// Represents the state of AndroidLargeTwelve in the application.
class AndroidLargeTwelveState extends Equatable {
  AndroidLargeTwelveState({
    this.phoneNumberController,
    this.phoneNumberController1,
    this.androidLargeTwelveModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? phoneNumberController1;

  AndroidLargeTwelveModel? androidLargeTwelveModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        phoneNumberController1,
        androidLargeTwelveModelObj,
      ];
  AndroidLargeTwelveState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? phoneNumberController1,
    AndroidLargeTwelveModel? androidLargeTwelveModelObj,
  }) {
    return AndroidLargeTwelveState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      phoneNumberController1:
          phoneNumberController1 ?? this.phoneNumberController1,
      androidLargeTwelveModelObj:
          androidLargeTwelveModelObj ?? this.androidLargeTwelveModelObj,
    );
  }
}
