// To parse this JSON data, do
//
//     final statistics = statisticsFromJson(jsonString);

import 'dart:convert';

Statistics statisticsFromJson(String str) =>
    Statistics.fromJson(json.decode(str));

String statisticsToJson(Statistics data) => json.encode(data.toJson());

class Statistics {
  Statistics(
      {this.viewCount,
      this.likeCount,
      this.dislikeCount,
      this.favoriteCount,
      this.commentCount,
      this.subscriberCount});

  String viewCount;
  String likeCount;
  String dislikeCount;
  String favoriteCount;
  String commentCount;
  String subscriberCount;

  factory Statistics.fromJson(Map<String, dynamic> json) => Statistics(
      viewCount: json["viewCount"],
      likeCount: json["likeCount"],
      dislikeCount: json["dislikeCount"],
      favoriteCount: json["favoriteCount"],
      commentCount: json["commentCount"],
      subscriberCount: json["subscriberCount"]);

  Map<String, dynamic> toJson() => {
        "viewCount": viewCount,
        "likeCount": likeCount,
        "dislikeCount": dislikeCount,
        "favoriteCount": favoriteCount,
        "commentCount": commentCount,
      };
}
