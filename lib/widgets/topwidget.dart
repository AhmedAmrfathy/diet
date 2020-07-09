import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
class TopWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: ScreenUtil().setHeight(55),
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'My Diary',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil().setSp(33)),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.arrow_back_ios,
                  size: ScreenUtil().setWidth(15),
                  color: Colors.black87,
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(20),
                ),
                Icon(
                  Icons.card_giftcard,
                  color: Colors.black87,
                  size: ScreenUtil().setWidth(27),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(6),
                ),
                Text(
                  '15 May',
                  style: TextStyle(
                      fontSize: ScreenUtil().setWidth(22),
                      color: Colors.black54),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(11),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: ScreenUtil().setWidth(15),
                  color: Colors.black87,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}