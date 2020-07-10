import 'package:flutter/material.dart';
class UnderCircleItem extends StatelessWidget {
  String text;
  String sectext;
  Color percent;
  Color fullperc;

  UnderCircleItem({this.text, this.sectext, this.percent, this.fullperc});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Flexible(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), color: fullperc),
                ),
                Container(
                  width: 60,
                  height: 5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), color: percent),
                )
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Flexible(
              child: Text(
                sectext,
                style: TextStyle(color: Colors.grey),
              ))
        ],
      ),
    );
  }
}