abstract class BaseApiServices {

  // declaration of abstract method so that it can be used/overide/modified under other class
  Future<dynamic> getApi(String url);
  
  Future<dynamic> postApi(dynamic data, String url);
}
