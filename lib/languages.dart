import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "en_US" : {
      "message": "What is your name",
      "name": "Suraj Patra",
    },
    "hi_IN" : {
      "message": "आपका क्या नाम है ?",
      "name": "सूरज पात्रा",
    }
  };
}
