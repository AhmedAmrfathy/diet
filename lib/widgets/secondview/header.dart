import 'package:diet/widgets/firstview/topwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import '../title.dart';
class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicesize=MediaQuery.of(context).size;

    return Container(
      width: devicesize.width,
      height: devicesize.height * .5,
      padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(12),
          right: ScreenUtil().setWidth(12),
          top: ScreenUtil().setHeight(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TopWidget(),
          SizedBox(
            height: ScreenUtil().setHeight(12),
          ),
          TitleWidget('Your program', 'Today'),
          SizedBox(
            height: ScreenUtil().setHeight(24),
          ),
          Container(
            padding: EdgeInsets.all(ScreenUtil().setHeight(14)),
            height: devicesize.height * .3,
            width: devicesize.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(41, 51, 202, 1),
                  Color.fromRGBO(116, 100, 210, 1)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(ScreenUtil().setWidth(70)))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Next Workout',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(15)),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(15),
                ),
                Expanded(
                  child: SizedBox(
                    width: devicesize.width - 146,
                    height: 20,
                    child: Text(
                      'Legs Tonic and Glutes Work out at home',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(22)),
                    ),
                  ),
                ),
                Container(
                  width: devicesize.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(
                            Icons.timelapse,
                            size: ScreenUtil().setHeight(
                              15,
                            ),
                            color: Colors.white,
                          ),
                          Text(
                            ' 48 min',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(15)),
                          )
                        ],
                      ),
                      Container(
                        width: ScreenUtil().setWidth(45),
                        height: ScreenUtil().setHeight(45),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.play_arrow,
                            color: Color.fromRGBO(116, 100, 210, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
