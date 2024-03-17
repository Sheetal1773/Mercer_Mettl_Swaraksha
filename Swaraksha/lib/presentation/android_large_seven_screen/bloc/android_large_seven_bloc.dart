import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../android_large_eight_screen/android_large_eight_screen.dart';
import '../../android_large_nine_screen/android_large_nine_screen.dart';
import '../../android_large_ten_screen/android_large_ten_screen.dart';
import '/core/app_export.dart';
import '../models/sosbutton_item_model.dart';
import 'package:sheetal_kanojia_s_application4/presentation/android_large_seven_screen/models/android_large_seven_model.dart';
part 'android_large_seven_event.dart';
part 'android_large_seven_state.dart';

/// A bloc that manages the state of a AndroidLargeSeven according to the event that is dispatched to it.
class AndroidLargeSevenBloc
    extends Bloc<AndroidLargeSevenEvent, AndroidLargeSevenState> {
  AndroidLargeSevenBloc(AndroidLargeSevenState initialState)
      : super(initialState) {
    on<AndroidLargeSevenInitialEvent>(_onInitialize);
     on<NavigateToSOSButton1Event>(_onNavigateToSOSButton1Event);
     on<NavigateToSOSButton2Event>(_onNavigateToSOSButton2Event);
     on<NavigateToSOSButton3Event>(_onNavigateToSOSButton3Event);
     on<NavigateToSOSButton4Event>(_onNavigateToSOSButton4Event);
     on<NavigateToSOSButton5Event>(_onNavigateToSOSButton5Event);
  }

  _onInitialize(
    AndroidLargeSevenInitialEvent event,
    Emitter<AndroidLargeSevenState> emit,
  ) async {
    emit(state.copyWith(
        androidLargeSevenModelObj: state.androidLargeSevenModelObj?.copyWith(
      sosbuttonItemList: fillSosbuttonItemList(),
    )));
  }

  _onNavigateToSOSButton1Event(
    NavigateToSOSButton1Event event,
    Emitter<AndroidLargeSevenState> emit,
  ) {
    // Handle navigation or any other logic here
    print("Navigating to SOS Button 1");
    // You can use Navigator to push a new page
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => YourPage(),
    //   ),
    // );
  }
  _onNavigateToSOSButton2Event(
    NavigateToSOSButton2Event event,
    Emitter<AndroidLargeSevenState> emit,
  ) {
    // Handle navigation or any other logic here
    print("Navigating to SOS Button 2");
    // You can use Navigator to push a new page
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => YourPage(),
    //   ),
    // );
  }
  _onNavigateToSOSButton3Event(
    NavigateToSOSButton3Event event,
    Emitter<AndroidLargeSevenState> emit,
  ) {
    // Handle navigation or any other logic here
    print("Navigating to SOS Button 3");
    // You can use Navigator to push a new page
    Navigator.push(
      event.context,
      MaterialPageRoute(
        builder: (context) => AndroidLargeTenScreen(),
      ),
    );
  }
  _onNavigateToSOSButton4Event(
    NavigateToSOSButton4Event event,
    Emitter<AndroidLargeSevenState> emit,
  ) {
    // Handle navigation or any other logic here
    print("Navigating to SOS Button 4");
    // You can use Navigator to push a new page
    Navigator.push(
      event.context,
      MaterialPageRoute(
        builder: (context) => AndroidLargeEightScreen(),
      ),
    );
  }
_onNavigateToSOSButton5Event(
    NavigateToSOSButton5Event event,
    Emitter<AndroidLargeSevenState> emit,
  ) {
    // Handle navigation or any other logic here
    print("Navigating to SOS Button 5");
    // You can use Navigator to push a new page
    Navigator.push(
      event.context,
      MaterialPageRoute(
        builder: (context) => AndroidLargeNineScreen(),
      ),
    );
  }

List<SosbuttonItemModel> fillSosbuttonItemList() {
  return [
    SosbuttonItemModel(
      alertMessage: ImageConstant.imgSos,
      alertText:
          "SOS BUTTON\nSENDS ALERT MESSAGES AND LOCATIONS TO EMERGENCY CONTACTS AND COMMUNITY ALSO CAPTURES THE IMAGES OF HARASSER",
      id: "sosButton1", // Unique identifier for the first button
    ),
    SosbuttonItemModel(
      alertMessage: ImageConstant.imgPoliceOfficer,
      alertText:
          "ALERT POLICE\nSENDS EMERGENCY MESSAGES AND LOCATIONS  TO NEARBY POLICE STATION AND HELPLINES",
      id: "sosButton2", // Unique identifier for the second button
    ),
    SosbuttonItemModel(
      alertMessage: ImageConstant.imgHomeAlarm,
      alertText:
          "PANIC BUTTON\nEMERGENCY ALARM\nGENERATES A HIGH-DECIBEL NOISE FOR IMMEDIATE ATTENTION",
      id: "sosButton3", // Unique identifier for the third button
    ),
    SosbuttonItemModel(
      alertMessage: ImageConstant.selfDefence,
      alertText: "SELF DEFENSE TECHNIQUES\nLEARN SOME SELF DEFENSE TECHNIQUES",
      id: "sosButton4", // Unique identifier for the fourth button
    ),
    SosbuttonItemModel(
      alertMessage: ImageConstant.imgImportantDelivery,
      alertText: "IMPORTANT NEWS\nGET UPDATED ABOUT NEW TRICKS AND SCAMS",
      id: "sosButton5", // Unique identifier for the fifth button
    ),
  ];
}

}
