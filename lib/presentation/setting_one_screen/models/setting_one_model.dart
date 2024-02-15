import '../../../core/app_export.dart';
import 'equalizers_item_model.dart';

class SettingOneModel {
  List<EqualizersItemModel> equalizersItemList = [
    EqualizersItemModel(dBCounter: "4 dB", hzCounter: "60 Hz"),
    EqualizersItemModel(dBCounter: "3 dB", hzCounter: "150 Hz"),
    EqualizersItemModel(dBCounter: "0 dB", hzCounter: "400 Hz"),
    EqualizersItemModel(dBCounter: "0 dB", hzCounter: "1.0 kHz"),
    EqualizersItemModel(dBCounter: "-4 dB", hzCounter: "2.4 kHz"),
    EqualizersItemModel(dBCounter: "0 dB", hzCounter: "15 kHz")
  ];
}
