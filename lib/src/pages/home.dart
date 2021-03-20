import 'package:flutter/material.dart';
import 'package:flutter_getx_youtube/src/components/custom_appbar.dart';

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
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              color: Colors.grey,
            ),
          );
        }, childCount: 10))
      ],
    ));
  }
}
