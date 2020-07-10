import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
class TitleWidget extends StatelessWidget {
 final String leading;

 TitleWidget(this.leading, this.trailing);

 final String trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            leading,
            style: TextStyle(
                color: Color.fromRGBO(86, 136, 144, 1),
                fontWeight: FontWeight.w600,
                fontSize: ScreenUtil().setSp(18)),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                trailing,
                style: TextStyle(
                    fontSize: ScreenUtil().setWidth(18),
                    color: Color.fromRGBO(83, 90, 184, 1),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(3),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.blueGrey,
                size: ScreenUtil().setWidth(20),
              )
            ],
          )
        ],
      ),
    );
  }
}
