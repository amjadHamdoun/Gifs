import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../repo/get_gif_repo.dart';
import 'gif_state.dart';

part 'gif_event.dart';

class GifBloc extends Bloc<GifEvent, GifState> {
  GetGifsRepo getGifsRepo;

  GifBloc({required this.getGifsRepo}) : super(GifState.initial()) {
    on<GetGifsPaginationEvent>((event, emit) async {
      emit(state.rebuild((b) => b
        ..isLoading=true
        ..error=''
      ));
      final result = await getGifsRepo.getGifs();

      return result.fold((l) async {
        print('l');
        emit(state.rebuild((b) => b
          ..isLoading = false
          ..error = l

        ));
      }, (r) async {
        emit(state.rebuild((b) => b
          ..page = state.page+1
          ..isLoading = false
          ..gifs = state.gifs+r
        ));
      });
    });
  }
}