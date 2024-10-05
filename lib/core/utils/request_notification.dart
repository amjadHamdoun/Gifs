import 'dart:developer';

import 'package:permission_handler/permission_handler.dart';


Future<void> requestNotification() async {
  try{

    await Permission.notification.isDenied.then((value) {
      if (value) {
        Permission.notification.request();
      }
    });
  }
  catch(e){
    log(e.toString());
  }

}