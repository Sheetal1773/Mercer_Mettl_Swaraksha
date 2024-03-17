import '../../../core/app_export.dart';

/// This class is used in the [sosbutton_item_widget] screen.
class SosbuttonItemModel {
  SosbuttonItemModel({
    this.alertMessage,
    this.alertText,
    this.id,
  }) {
    alertMessage = alertMessage ?? ImageConstant.imgSos;
    alertText = alertText ??
        "SOS BUTTON\nSENDS ALERT MESSAGES AND LOCATIONS TO EMERGENCY CONTACTS AND COMMUNITY ALSO CAPTURES THE IMAGES OF HARASSER";
    id = id ?? "";
  }

  String? alertMessage;

  String? alertText;

  String? id;
}
