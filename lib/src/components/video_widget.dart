import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key key}) : super(key: key);

  Widget _thumbnail() {
    return Container(
      height: 250,
      color: Colors.grey.withOpacity(0.5),
    );
  }

  Widget _simpleDetailInfo() {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey.withOpacity(0.5),
            backgroundImage: Image.network(
                    "https://post-phinf.pstatic.net/MjAxOTEyMDRfOSAg/MDAxNTc1NDI1MTg2MDE2.b1S1g-yhSiy6hxFJOoMsO7-PlMTc2iWAdznJ2xZwTxQg.3kTCo5pOPX6G3wtYR1AAYeGetDTkOXO2xTCM0SU4bNcg.JPEG/253-%EC%95%84%EC%9D%B4%EC%9C%A04.jpg?type=w1200")
                .image,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "titlasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdase",
                      maxLines: 2,
                    ),
                  ),
                  IconButton(
                      alignment: Alignment.topCenter,
                      icon: Icon(Icons.more_vert, size: 18),
                      onPressed: () {})
                ],
              ),
              Row(
                children: [
                  Text(
                    "안녕하세요 감사해요",
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.8)),
                  ),
                  Text(" · "),
                  Text(
                    "조회수 1000회",
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.6)),
                  ),
                  Text(" · "),
                  Text(
                    "2021-03-21",
                    style: TextStyle(
                        fontSize: 12, color: Colors.black.withOpacity(0.6)),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [_thumbnail(), _simpleDetailInfo()],
      ),
    );
  }
}
