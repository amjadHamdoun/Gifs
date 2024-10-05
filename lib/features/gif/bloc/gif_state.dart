



import 'package:built_value/built_value.dart';

import '../model/gif_model.dart';




part 'gif_state.g.dart';


abstract class GifState implements Built<GifState,
    GifStateBuilder> {



  int get page;
  List<GifModel> get gifs;
  String get error;
  String get message;
  bool get isLoading;

  GifState._();

  factory GifState([void Function(GifStateBuilder) updates]) = _$GifState;

  factory GifState.initial() {
    return GifState((b) => b
      ..page=0
       ..gifs=[]
        ..error=''
        ..message=''
        ..isLoading=false
    );
  }
}


