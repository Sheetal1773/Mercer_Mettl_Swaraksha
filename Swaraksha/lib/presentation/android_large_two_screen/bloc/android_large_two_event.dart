// ignore_for_file: must_be_immutable

part of 'android_large_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeTwoEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeTwo widget is first created.
class AndroidLargeTwoInitialEvent extends AndroidLargeTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends AndroidLargeTwoEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AndroidLargeTwoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
