class Config{
// 'http://' + Config.IP + ':' + Config.PORT + '/' + Config.DOMAIN
  static const PROTOCOL = 'http://';
  static const String IP = '192.168.1.3';
  static const String PORT = ':80';
  static const String API = '/platform';
  static const String DOMAIN = PROTOCOL + IP + PORT + API;
  static const String IMAGE_PATH = '/image/';
  static const String IMAGE = DOMAIN + IMAGE_PATH;

}