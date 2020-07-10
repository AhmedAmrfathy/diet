import 'package:diet/widgets/secondview/trainingitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import '../title.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;

    return Container(
      width: devicesize.width,
      height: devicesize.height * .6,
      margin: EdgeInsets.only(top: ScreenUtil().setHeight(15)),
      padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(12),
          right: ScreenUtil().setWidth(12),
          top: ScreenUtil().setHeight(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TitleWidget('Area of focus', 'Today'),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: (Container(
                      child: Row(
                        children: <Widget>[
                          TrainingItem(
                              'https://pngimage.net/wp-content/uploads/2018/05/atletismo-png-6.png'),
                          TrainingItem(
                              'https://cdn.pixabay.com/photo/2016/03/31/20/06/man-1295507_960_720.png')
                        ],
                      ),
                    )),
                  ),
                  Expanded(
                    child: (Container(
                      child: Row(
                        children: <Widget>[
                          TrainingItem(
                              'https://pngimage.net/wp-content/uploads/2018/06/%E0%B8%AD%E0%B8%AD%E0%B8%81%E0%B8%81%E0%B8%B3%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%81%E0%B8%B2%E0%B8%A2-png-1.png'),
                          TrainingItem(
                              'https://inm-baobab-prod-eu-west-1.s3.amazonaws.com/public/inm/iol/media/image/2019/03/29/20233613/pixabaykegel.png')
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
