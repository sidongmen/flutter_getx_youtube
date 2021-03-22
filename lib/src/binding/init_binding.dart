import 'package:flutter_getx_youtube/src/controller/app_controller.dart';
import 'package:flutter_getx_youtube/src/repository/youtube_repository.dart';
import 'package:get/get.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(YoutubeRepository(), permanent: true);
    Get.put(AppController());
  }
}
