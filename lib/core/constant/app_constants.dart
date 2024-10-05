

import '../../features/gif/model/gif_model.dart';

class AppConstants{

  static const String login = "api/login";
  static const String customersCars = "api/customers";
  static const String socketSendLocationEvent= "send_location";



}


class StyleConstants{

  static const double fontSize = 16.0;
  static const double iconSize = 24.0;

}

class TestConstants{
  static List<GifModel> gifs=
     List.generate(30, (index) =>GifModel(
       image: 'https://media.giphy.com/media/ICOgUNjpvO0PC/giphy.gif',
       name: 'gif',
     ) ,);

}


