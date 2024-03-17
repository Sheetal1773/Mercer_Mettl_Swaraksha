// ignore_for_file: must_be_immutable

part of 'android_large_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeFiveEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeFive widget is first created.
class AndroidLargeFiveInitialEvent extends AndroidLargeFiveEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends AndroidLargeFiveEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
