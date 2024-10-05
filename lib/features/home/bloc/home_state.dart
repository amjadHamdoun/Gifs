



import 'package:built_value/built_value.dart';




part 'home_state.g.dart';


abstract class HomeState implements Built<HomeState,
    HomeStateBuilder> {



  int get page;

  String get error;
  String get message;



  HomeState._();

  factory HomeState([void Function(HomeStateBuilder) updates]) = _$HomeState;

  factory HomeState.initial() {
    return HomeState((b) => b
      ..page=0
        ..error=''
        ..message=''
    );
  }
}


