part of 'gif_bloc.dart';

abstract class GifEvent extends Equatable {
  const GifEvent();
  @override
  List<Object> get props => [];
}

class GetGifsPaginationEvent extends GifEvent {
  const GetGifsPaginationEvent();
}
