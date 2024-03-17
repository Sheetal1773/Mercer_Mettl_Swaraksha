import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_two_screen/models/android_large_two_model.dart';
part 'android_large_two_event.dart';
part 'android_large_two_state.dart';

/// A bloc that manages the state of a AndroidLargeTwo according to the event that is dispatched to it.
class AndroidLargeTwoBloc
    extends Bloc<AndroidLargeTwoEvent, AndroidLargeTwoState> {
  AndroidLargeTwoBloc(AndroidLargeTwoState initialState) : super(initialState) {
    on<AndroidLargeTwoInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<AndroidLargeTwoState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AndroidLargeTwoState> emit,
  ) {
    emit(state.copyWith(termsAndConditionsCheckbox: event.value));
  }

  _onInitialize(
    AndroidLargeTwoInitialEvent event,
    Emitter<AndroidLargeTwoState> emit,
  ) async {
    emit(state.copyWith(
        fullNameController: TextEditingController(),
        emailController: TextEditingController(),
        phoneNumberController: TextEditingController(),
        passwordController: TextEditingController(),
        cardNumber1Controller: TextEditingController(),
        cardNumber2Controller: TextEditingController(),
        isShowPassword: true,
        termsAndConditionsCheckbox: false));
  }
}
