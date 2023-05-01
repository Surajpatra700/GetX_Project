import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "en_US": {
      "email_hint" : "Enter email",
      "internet_exception": "We are unable to load the data",
      "splash_page": "Splash Screen",
      "hint_email": "email",
      "hint_password": "password"
    },
    "hi_IN": {
      "email_hint": "ईमेल दर्ज करें"
    }
  };
}
