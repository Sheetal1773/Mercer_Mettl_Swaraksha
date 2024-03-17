// ignore_for_file: must_be_immutable

part of 'android_large_five_bloc.dart';

/// Represents the state of AndroidLargeFive in the application.
class AndroidLargeFiveState extends Equatable {
  AndroidLargeFiveState({
    this.otpController,
    this.androidLargeFiveModelObj,
  });

  TextEditingController? otpController;

  AndroidLargeFiveModel? androidLargeFiveModelObj;

  @override
  List<Object?> get props => [
        otpController,
        androidLargeFiveModelObj,
      ];
  AndroidLargeFiveState copyWith({
    TextEditingController? otpController,
    AndroidLargeFiveModel? androidLargeFiveModelObj,
  }) {
    return AndroidLargeFiveState(
      otpController: otpController ?? this.otpController,
      androidLargeFiveModelObj:
          androidLargeFiveModelObj ?? this.androidLargeFiveModelObj,
    );
  }
}
