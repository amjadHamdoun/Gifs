part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();
  @override
  List<Object> get props => [];
}

class ChangePageEvent extends HomeEvent {
  final int page;
  const ChangePageEvent({required this.page});

}
