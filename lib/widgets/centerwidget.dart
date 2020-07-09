import 'package:diet/widgets/undercicleitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'foregrundwidget.dart';
class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .5,
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(8)),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Mideterian diet',
                  style: TextStyle(
                      color: Color.fromRGBO(86, 136, 144, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: ScreenUtil().setSp(22)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Details',
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
          ),
          SizedBox(
            height: ScreenUtil().setHeight(24),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(ScreenUtil().setHeight(10)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(ScreenUtil().setWidth(70)))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          VerticalDivider(
                                            color: Color.fromRGBO(70, 90, 213, .7),
                                            width: 4,
                                          ),
                                          SizedBox(
                                            width: ScreenUtil().setWidth(9),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Eaten',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize:
                                                    ScreenUtil().setSp(20),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.timelapse,
                                                      color: Color.fromRGBO(
                                                          70, 90, 213, .7),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                      ScreenUtil().setWidth(5),
                                                    ),
                                                    Text(
                                                      '1127 ',
                                                      style: TextStyle(
                                                          fontSize: ScreenUtil()
                                                              .setSp(20),
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.w500),
                                                    ),
                                                    Text(
                                                      'Koal',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: ScreenUtil()
                                                              .setSp(15)),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )),
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(20),
                                ),
                                Expanded(
                                  child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          VerticalDivider(
                                            color: Colors.pinkAccent,
                                            width: ScreenUtil().setWidth(4),
                                          ),
                                          SizedBox(
                                            width: ScreenUtil().setWidth(9),
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Eaten',
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize:
                                                    ScreenUtil().setSp(20),
                                                    fontWeight: FontWeight.w500),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.timelapse,
                                                      color: Color.fromRGBO(
                                                          243, 112, 157, 1),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                      ScreenUtil().setWidth(5),
                                                    ),
                                                    Text(
                                                      '1127 ',
                                                      style: TextStyle(
                                                          fontSize: ScreenUtil()
                                                              .setSp(20),
                                                          color: Colors.black,
                                                          fontWeight:
                                                          FontWeight.w500),
                                                    ),
                                                    Text(
                                                      'Koal',
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: ScreenUtil()
                                                              .setSp(15)),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                          ),
                          CustomPaint(
                              foregroundPainter: ForeGroundWidget(),
                              child: Container(
                                width: ScreenUtil().setWidth(135),
                                height: ScreenUtil().setHeight(135),
                                child: Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          '1503',
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(30),
                                              fontWeight: FontWeight.w400,
                                              color:
                                              Color.fromRGBO(72, 85, 206, 1)),
                                        ),
                                        Text(
                                          'Kcal left',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    )),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: .4,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          UnderCircleItem(
                            fullperc: Color.fromRGBO(231, 235, 245, 1),
                            percent: Color.fromRGBO(144, 166, 226, 1),
                            text: 'Carbs',
                            sectext: '12g left',
                          ),
                          UnderCircleItem(
                            fullperc: Color.fromRGBO(252, 226, 234, 1),
                            percent: Color.fromRGBO(246, 130, 266, 1),
                            text: 'Protien',
                            sectext: '6g left',
                          ),
                          UnderCircleItem(
                            fullperc: Color.fromRGBO(231, 235, 245, 1),
                            percent: Color.fromRGBO(144, 166, 226, 1),
                            text: 'Carbs',
                            sectext: '12g left',
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}