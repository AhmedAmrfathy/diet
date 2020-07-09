import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
class BodyMesureItem extends StatelessWidget {
  final String one;
  final String two;

  BodyMesureItem(this.one, this.two);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          one,
          style: TextStyle(
              color: Colors.black,
              fontSize: ScreenUtil().setSp(19),
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(7),
        ),
        Text(
          two,
          style:
          TextStyle(color: Colors.grey, fontSize: ScreenUtil().setSp(15)),
        ),
      ],
    );
  }
}
