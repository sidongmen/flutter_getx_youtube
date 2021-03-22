import 'package:flutter_getx_youtube/src/models/statistics.dart';
import 'package:flutter_getx_youtube/src/models/video.dart';

class Youtuber {
  Youtuber({this.snippet, this.statistics});

  final Snippet snippet;
  final Statistics statistics;

  factory Youtuber.fromJson(Map<String, dynamic> json) => Youtuber(
      snippet: Snippet.fromJson(json["snippet"]),
      statistics: Statistics.fromJson(json["statistics"]));
}
