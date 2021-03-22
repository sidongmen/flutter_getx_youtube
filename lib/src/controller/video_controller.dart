import 'package:flutter_getx_youtube/src/models/statistics.dart';
import 'package:flutter_getx_youtube/src/models/video.dart';
import 'package:flutter_getx_youtube/src/models/youtuber.dart';
import 'package:flutter_getx_youtube/src/repository/youtube_repository.dart';
import 'package:get/get.dart';

class VideoController extends GetxController {
  Video video;
  VideoController({this.video});
  Rx<Statistics> statistics = Statistics().obs;
  Rx<Youtuber> youtuber = Youtuber().obs;

  @override
  Future<void> onInit() async {
    Statistics loadStatistics =
        await YoutubeRepository.to.getVideoInfoById(video.id.videoId);
    statistics(loadStatistics);

    Youtuber loadYoutuber =
        await YoutubeRepository.to.getYoutuberInfoById(video.snippet.channelId);
    youtuber(loadYoutuber);

    super.onInit();
  }

  String get viewCountString => statistics.value.viewCount;
  String get youtuberThumbnail {
    if (youtuber.value.snippet == null)
      return "https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png";
    else
      return youtuber.value.snippet.thumbnails.medium.url;
  }
}
