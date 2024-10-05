
import 'package:flutter_gif_test/core/constant/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gif_test/features/gif/model/gif_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gif/gif.dart';



class GifItem extends StatefulWidget {
  const GifItem({super.key, required this.gifModel});

  final GifModel gifModel;

  @override
  State<GifItem> createState() => _GifItemState();
}

class _GifItemState extends State<GifItem> with TickerProviderStateMixin {
  late  GifController _controller ;

  @override
  void initState() {
    _controller = GifController(vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(4.0.r),
      child: Card(
        color: Theme.of(context).cardColor,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 12.r,vertical: 4.h),
          child: Row(
            children: [
              SizedBox(
                height: 50.r,
                width: 50.r,
                child: Gif(
                  fps: 30,
                  autostart: Autostart.loop,
                  placeholder: (context) =>
                  const Center(child: CircularProgressIndicator()),
                  image: NetworkImage(
                     widget.gifModel.image!,
                  ),
                  controller: _controller,
                ),
              ),
              SizedBox(width: 12.r,),
              Expanded(
                child: Text(
                  widget.gifModel.name!,
                  style:  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:(StyleConstants.fontSize-1).sp,
                      color: Theme.of(context).primaryColor
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios,
              size: StyleConstants.iconSize.sp,
                color:Theme.of(context).iconTheme.color ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
