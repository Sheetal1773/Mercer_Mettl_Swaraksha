// ignore_for_file: must_be_immutable

part of 'android_large_two_bloc.dart';

/// Represents the state of AndroidLargeTwo in the application.
class AndroidLargeTwoState extends Equatable {
  AndroidLargeTwoState({
    this.fullNameController,
    this.emailController,
    this.phoneNumberController,
    this.passwordController,
    this.cardNumber1Controller,
    this.cardNumber2Controller,
    this.isShowPassword = true,
    this.termsAndConditionsCheckbox = false,
    this.androidLargeTwoModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  TextEditingController? cardNumber1Controller;

  TextEditingController? cardNumber2Controller;

  AndroidLargeTwoModel? androidLargeTwoModelObj;

  bool isShowPassword;

  bool termsAndConditionsCheckbox;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        phoneNumberController,
        passwordController,
        cardNumber1Controller,
        cardNumber2Controller,
        isShowPassword,
        termsAndConditionsCheckbox,
        androidLargeTwoModelObj,
      ];
  AndroidLargeTwoState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    TextEditingController? cardNumber1Controller,
    TextEditingController? cardNumber2Controller,
    bool? isShowPassword,
    bool? termsAndConditionsCheckbox,
    AndroidLargeTwoModel? androidLargeTwoModelObj,
  }) {
    return AndroidLargeTwoState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      cardNumber1Controller:
          cardNumber1Controller ?? this.cardNumber1Controller,
      cardNumber2Controller:
          cardNumber2Controller ?? this.cardNumber2Controller,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      termsAndConditionsCheckbox:
          termsAndConditionsCheckbox ?? this.termsAndConditionsCheckbox,
      androidLargeTwoModelObj:
          androidLargeTwoModelObj ?? this.androidLargeTwoModelObj,
    );
  }
}
