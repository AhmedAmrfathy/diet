import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;

    return Container(
      width: devicesize.width - 20,
      height: devicesize.height * .15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: Container(
              width: devicesize.width - 20,
              height: devicesize.height * .12,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://images8.alphacoders.com/594/594870.jpg'))),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Container(
                    width: devicesize.width - 20,
                    height: devicesize.height * .12,
                    decoration: BoxDecoration(),
                  ),
                  Positioned(
                      right: 0,
                      child: Container(
                        height: devicesize.height * .12,
                        width: devicesize.width - 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.elliptical(100, 100)),
                            color: Colors.white),
                      )),
                  Positioned(
                    left: ScreenUtil().setWidth(95),
                    top: ScreenUtil().setHeight(15),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'You are doing greate !',
                            style: TextStyle(
                                color: Color.fromRGBO(116, 100, 210, 1),
                                fontSize: ScreenUtil().setSp(16),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'keep it up',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil().setSp(13),
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'and stack to yor plane',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: ScreenUtil().setSp(13),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 30,
            child: Container(
              width: ScreenUtil().setWidth(60),
              height: ScreenUtil().setHeight(80),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://lh3.googleusercontent.com/proxy/lW70ErMlaH05fBFFcnLTM1kI-bmwlNMpm35hUHdqJGlL7R821CKwAh3ox80CZCBrrTywIdmCLRBt_nsmOsIml78bdabeX6bLiIxDJaxBBSODI5Dw_eFgK0k'))),
            ),
          ),
        ],
      ),
    );
  }
}
