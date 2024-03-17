// ignore_for_file: must_be_immutable

part of 'android_large_eleven_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeElevenTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeElevenTabContainerEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeElevenTabContainer widget is first created.
class AndroidLargeElevenTabContainerInitialEvent
    extends AndroidLargeElevenTabContainerEvent {
  @override
  List<Object?> get props => [];
}
