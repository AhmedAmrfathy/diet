import 'package:diet/widgets/secondview/body.dart';
import 'package:diet/widgets/secondview/footer.dart';
import 'package:diet/widgets/secondview/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class SecondView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    ScreenUtil.init(
        width: devicesize.width,
        height: devicesize.height,
        allowFontScaling: false);
    return ListView(
      children: <Widget>[
        HeaderWidget(),
        BodyWidget(),
        FooterWidget()
      ],
    );
  }
}
