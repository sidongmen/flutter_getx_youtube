import 'package:flutter/material.dart';
import 'package:flutter_getx_youtube/src/components/custom_appbar.dart';
import 'package:flutter_getx_youtube/src/components/video_widget.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverAppBar(title: CustomAppBar(), floating: true, snap: true),
        SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed("/detail/1232");
            },
            child: VideoWidget(),
          );
        }, childCount: 10))
      ],
    ));
  }
}
