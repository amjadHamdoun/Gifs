import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gif_test/features/gif/bloc/gif_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constant/app_constants.dart';
import '../../injection.dart';
import 'bloc/gif_bloc.dart';
import 'widgets/gif_item_widget.dart';

class GifPage extends StatefulWidget {
  const GifPage({super.key});

  @override
  State<GifPage> createState() => _GifPageState();
}

class _GifPageState extends State<GifPage> {

  GifBloc bloc= sl<GifBloc>();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    bloc.add(const GetGifsPaginationEvent());
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent ) {
        bloc.add(const GetGifsPaginationEvent());
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GifBloc,GifState>(
      bloc: bloc,
      listener: (context, state) {

      },
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              title: Text(
                "Gif",
                style: TextStyle(
                  fontSize: StyleConstants.fontSize.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {},
                    child: ListView.builder(
                      controller: _scrollController,
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.gifs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
                          child: GifItem(
                            gifModel:state.gifs[index] ,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                if(state.isLoading)
                  const Center(child: CircularProgressIndicator(),),
              ],
            ));
      },
    );
  }
}
