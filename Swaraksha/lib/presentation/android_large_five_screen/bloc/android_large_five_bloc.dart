import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_five_screen/models/android_large_five_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'android_large_five_event.dart';
part 'android_large_five_state.dart';

/// A bloc that manages the state of a AndroidLargeFive according to the event that is dispatched to it.
class AndroidLargeFiveBloc
    extends Bloc<AndroidLargeFiveEvent, AndroidLargeFiveState>
    with CodeAutoFill {
  AndroidLargeFiveBloc(AndroidLargeFiveState initialState)
      : super(initialState) {
    on<AndroidLargeFiveInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<AndroidLargeFiveState> emit,
  ) {
    emit(
        state.copyWith(otpController: TextEditingController(text: event.code)));
  }

  _onInitialize(
    AndroidLargeFiveInitialEvent event,
    Emitter<AndroidLargeFiveState> emit,
  ) async {
    emit(state.copyWith(otpController: TextEditingController()));
    listenForCode();
  }
}
