import 'package:diet/widgets/foregrundwidget.dart';
import 'package:diet/widgets/topwidget.dart';
import 'package:diet/widgets/undercicleitem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bodymeasureitem.dart';
import 'centerwidget.dart';
import 'fooditem.dart';

class FirdtView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devicesize = MediaQuery.of(context).size;
    ScreenUtil.init(
        width: devicesize.width,
        height: devicesize.height,
        allowFontScaling: false);
    return ListView(
      children: <Widget>[
        Container(
          width: devicesize.width,
          height: devicesize.height * .65,
          padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(12),
              right: ScreenUtil().setWidth(12),
              top: ScreenUtil().setHeight(8)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TopWidget(),
              SizedBox(
                height: ScreenUtil().setHeight(25),
              ),
              CenterWidget(),
            ],
          ),
        ),
        FootWidget(),
        SizedBox(
          height: ScreenUtil().setHeight(20),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .4,
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(8)),
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Body Measurement',
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
                          'Today',
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
              Container(
                padding: EdgeInsets.all(ScreenUtil().setHeight(10)),
                height: devicesize.height * .3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(ScreenUtil().setWidth(70)))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: <Widget>[
                                        VerticalDivider(
                                          color:
                                              Color.fromRGBO(70, 90, 213, .7),
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
                                              'Weight',
                                              style: TextStyle(
                                                  color: Colors.black,
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
                                                  Text(
                                                    '208.8',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            103, 114, 217, 1),
                                                        fontSize: ScreenUtil()
                                                            .setSp(32),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    ' lbs',
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            103, 114, 217, 1),
                                                        fontSize: ScreenUtil()
                                                            .setSp(17)),
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
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Icon(
                                      Icons.alarm,
                                      size: ScreenUtil().setHeight(16),
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      ' Today 8:26 AM',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(6),
                                ),
                                Text(
                                  ' InBody Smartscale',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(103, 114, 217, 1)),
                                )
                              ],
                            )
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
                            Expanded(child: BodyMesureItem('165 cm', 'Height')),
                            VerticalDivider(),
                            Expanded(
                                child:
                                    BodyMesureItem('27,3 BMl', 'Ovverweight')),
                            VerticalDivider(),
                            Expanded(child: BodyMesureItem('20 % ', 'Fat'))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
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
                          topRight:
                              Radius.circular(ScreenUtil().setWidth(70)))),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          VerticalDivider(
                                            color:
                                                Color.fromRGBO(70, 90, 213, .7),
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
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.timelapse,
                                                      color: Color.fromRGBO(
                                                          70, 90, 213, .7),
                                                    ),
                                                    SizedBox(
                                                      width: ScreenUtil()
                                                          .setWidth(5),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.timelapse,
                                                      color: Color.fromRGBO(
                                                          243, 112, 157, 1),
                                                    ),
                                                    SizedBox(
                                                      width: ScreenUtil()
                                                          .setWidth(5),
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
                              Container(
                                width: ScreenUtil().setWidth(60),
                                height: ScreenUtil().setHeight(180),
                                margin: EdgeInsets.only(
                                    right: ScreenUtil().setWidth(20)),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(213, 214, 237, 1),
                                    borderRadius: BorderRadius.circular(29)),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                          width: ScreenUtil().setWidth(60),
                                          height: ScreenUtil().setHeight(120),
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  84, 96, 214, 1),
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(29),
                                                  bottomRight:
                                                      Radius.circular(29))),child: Center(child:Text('70%',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: ScreenUtil().setSp(22)),)),),
                                    ),

                                  ],
                                ),
                              )
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
        )
      ],
    );
  }
}











