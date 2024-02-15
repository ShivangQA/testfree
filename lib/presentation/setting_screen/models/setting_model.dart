import '../../../core/app_export.dart';
import 'equalizers1_item_model.dart';

class SettingModel {
  List<Equalizers1ItemModel> equalizers1ItemList = [
    Equalizers1ItemModel(dBCounter: "4 dB", hzCounter: "60 Hz"),
    Equalizers1ItemModel(dBCounter: "3 dB", hzCounter: "150 Hz"),
    Equalizers1ItemModel(dBCounter: "0 dB", hzCounter: "400 Hz"),
    Equalizers1ItemModel(dBCounter: "0 dB", hzCounter: "1.0 kHz"),
    Equalizers1ItemModel(dBCounter: "-4 dB", hzCounter: "2.4 kHz"),
    Equalizers1ItemModel(dBCounter: "0 dB", hzCounter: "15 kHz")
  ];
}
