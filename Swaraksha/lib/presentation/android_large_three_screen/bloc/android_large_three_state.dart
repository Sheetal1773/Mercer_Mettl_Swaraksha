// ignore_for_file: must_be_immutable

part of 'android_large_three_bloc.dart';

/// Represents the state of AndroidLargeThree in the application.
class AndroidLargeThreeState extends Equatable {
  AndroidLargeThreeState({
    this.userNameController,
    this.passwordController,
    this.androidLargeThreeModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  AndroidLargeThreeModel? androidLargeThreeModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        androidLargeThreeModelObj,
      ];
  AndroidLargeThreeState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    AndroidLargeThreeModel? androidLargeThreeModelObj,
  }) {
    return AndroidLargeThreeState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      androidLargeThreeModelObj:
          androidLargeThreeModelObj ?? this.androidLargeThreeModelObj,
    );
  }
}
