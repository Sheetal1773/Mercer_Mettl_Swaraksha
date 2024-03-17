// ignore_for_file: must_be_immutable

part of 'android_large_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeSevenEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeSeven widget is first created.
class AndroidLargeSevenInitialEvent extends AndroidLargeSevenEvent {
  @override
  List<Object?> get props => [];
}

class NavigateToSOSButton1Event extends AndroidLargeSevenEvent {
  @override
  List<Object?> get props => [];
}

// Event for navigating to the screen related to the second SOS button
class NavigateToSOSButton2Event extends AndroidLargeSevenEvent {
  @override
  List<Object?> get props => [];
}

class NavigateToSOSButton3Event extends AndroidLargeSevenEvent {
  @override
  final BuildContext context;

  NavigateToSOSButton3Event({required this.context});
  List<Object?> get props => [];
}


class NavigateToSOSButton4Event extends AndroidLargeSevenEvent {
  @override
    final BuildContext context;

  NavigateToSOSButton4Event({required this.context});
  
  List<Object?> get props => [];
}

class NavigateToSOSButton5Event extends AndroidLargeSevenEvent {
  @override
    final BuildContext context;

  NavigateToSOSButton5Event({required this.context});
  List<Object?> get props => [];
}
