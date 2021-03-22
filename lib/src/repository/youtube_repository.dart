import 'package:flutter_getx_youtube/src/models/statistics.dart';
import 'package:flutter_getx_youtube/src/models/youtube_video_result.dart';
import 'package:flutter_getx_youtube/src/models/youtuber.dart';
import 'package:get/get.dart';

class YoutubeRepository extends GetConnect {
  static YoutubeRepository get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = "https://www.googleapis.com";
    super.onInit();
  }

  Future<YoutubeVideoResult> loadVideos() async {
    String url =
        "/youtube/v3/search?part=snippet&channelId=UCEblUsnI9sOAo_iSwX4ngRQ&maxResults=10&order=date&type=video&videoDefinition=high&key=AIzaSyD5DTPejx0vT9FYHja9qEp3bXfQ0JS5T4w";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        return YoutubeVideoResult.fromJson(response.body);
      }
    }
  }

  Future<Statistics> getVideoInfoById(String videoId) async {
    String url =
        "/youtube/v3/videos?part=snippet, statistics&key=AIzaSyD5DTPejx0vT9FYHja9qEp3bXfQ0JS5T4w&id=$videoId";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        Map<String, dynamic> data = response.body["items"][0];
        return Statistics.fromJson(data["statistics"]);
      }
    }
  }

  Future<Youtuber> getYoutuberInfoById(String channelId) async {
    String url =
        "/youtube/v3/channels?part=statistics,snippet&key=AIzaSyD5DTPejx0vT9FYHja9qEp3bXfQ0JS5T4w&id=$channelId";
    final response = await get(url);
    if (response.status.hasError) {
      return Future.error(response.statusText);
    } else {
      if (response.body["items"] != null && response.body["items"].length > 0) {
        Map<String, dynamic> data = response.body["items"][0];
        return Youtuber.fromJson(data);
      }
    }
  }
}
