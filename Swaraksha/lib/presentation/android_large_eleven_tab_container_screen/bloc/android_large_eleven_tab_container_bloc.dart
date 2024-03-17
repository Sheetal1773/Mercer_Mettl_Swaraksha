import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_eleven_tab_container_screen/models/android_large_eleven_tab_container_model.dart';
part 'android_large_eleven_tab_container_event.dart';
part 'android_large_eleven_tab_container_state.dart';

/// A bloc that manages the state of a AndroidLargeElevenTabContainer according to the event that is dispatched to it.
class AndroidLargeElevenTabContainerBloc extends Bloc<
    AndroidLargeElevenTabContainerEvent, AndroidLargeElevenTabContainerState> {
  AndroidLargeElevenTabContainerBloc(
      AndroidLargeElevenTabContainerState initialState)
      : super(initialState) {
    on<AndroidLargeElevenTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeElevenTabContainerInitialEvent event,
    Emitter<AndroidLargeElevenTabContainerState> emit,
  ) async {}
}
