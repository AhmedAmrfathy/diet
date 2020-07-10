import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
class TrainingItem extends StatelessWidget {
  final String imge;

  TrainingItem(this.imge);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(margin: EdgeInsets.all(10),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
          color: Colors.white,
          child: Center(
            child: SizedBox(
              width: ScreenUtil().setWidth(180),
              height: ScreenUtil().setHeight(90),
              child: Image.network(imge),
            ),
          ),
        ),
      ),
    );
  }
}