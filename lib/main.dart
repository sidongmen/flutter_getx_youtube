import 'package:flutter/material.dart';
import 'package:flutter_getx_youtube/src/app.dart';
import 'package:flutter_getx_youtube/src/binding/init_binding.dart';
import 'package:flutter_getx_youtube/src/pages/youtubeDetail.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Youtube Clone App',
      theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => App()),
        GetPage(name: "/detail/:videoId", page: () => YoutubeDetail())
      ],
    );
  }
}
