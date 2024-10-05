import 'dart:io';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_gif_test/core/constant/app_constants.dart';
import 'package:flutter_gif_test/core/mixins/base_mixin.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../injection.dart';

import '../gif/gif_page.dart';
import 'bloc/home_bloc.dart';
import 'bloc/home_state.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with BaseMixin {
  late HomeBloc homeBloc;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    homeBloc = sl<HomeBloc>();

    super.initState();
  }

  @override
  void dispose() {
    homeBloc.close();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      bloc: homeBloc,
      listener: (context, state) {
        if(state.message.isNotEmpty){
          Fluttertoast.showToast(
              msg: state.message,
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Theme.of(context).primaryColor,
              textColor: Theme.of(context).primaryColorLight,
              fontSize: 16.0
          );
        }
        else if(state.error.isNotEmpty){
          Fluttertoast.showToast(
              msg: state.error,
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Theme.of(context).primaryColorLight,
              fontSize: 16.0
          );
        }
      },
      child: BlocBuilder<HomeBloc, HomeState>(
        bloc: homeBloc,
        builder: (context, state) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (bo,result) async {
              showAlertDialog(
                context: context,
                title: "Exit".tr(),
                msg: "Are You Sure You want to close the App".tr(),
                positivePressed: () {
                  if (Platform.isAndroid) {
                    SystemNavigator.pop();
                  } else {
                    exit(0);
                  }
                },
                negativePressed: () {
                  Navigator.pop(context);
                },
                cancelable: true,
                negativeBtn: "Cancel".tr(),
                positiveBtn: "Confirm".tr(),
              );

            },
            child: Scaffold(
              body: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    homeBloc.add(ChangePageEvent(page: index));
                  },
                  children:  const [
                    GifPage(),
                    SizedBox(),
                  ]),
              bottomNavigationBar: BottomNavigationBar(
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/svg/track.svg",
                        height: (StyleConstants.iconSize - 4).r,
                        width: (StyleConstants.iconSize - 4).r,
                        color: state.page == 0
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).primaryColorDark,
                        // color: Colors.black,
                      ),
                      label: "Gifs",
                    ),

                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/svg/settings.svg",
                        height: (StyleConstants.iconSize - 4).r,
                        width: (StyleConstants.iconSize - 4).r,
                        color: state.page == 1
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).primaryColorDark,
                        // color: Colors.black,
                      ),
                      label: "settings".tr(),
                    ),
                  ],
                  selectedLabelStyle: TextStyle(
                    fontSize: (StyleConstants.fontSize - 4).sp,
                  ),
                  unselectedFontSize: (StyleConstants.fontSize - 5).sp,
                  currentIndex: state.page,
                  unselectedItemColor: Theme.of(context).primaryColorDark,
                  selectedItemColor: Theme.of(context).primaryColor,
                  showUnselectedLabels: true,
                  onTap: (index) {
                    homeBloc.add(ChangePageEvent(page: index));
                    pageController.jumpToPage(index);
                  }),
            ),
          );
        },
      ),
    );
  }
}
