import 'package:flutter/material.dart';
class FoodItem extends StatelessWidget {
  final String img;
  final String title;
  final String desca;
  final String descb;
  final String descc;
  final String footer;
  Color color;

  FoodItem(
      {this.img,
        this.title,
        this.desca,
        this.descb,
        this.descc,
        this.footer,
        this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                top: 35,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(60),
                          topLeft: Radius.circular(5))),
                ),
              ),
              Positioned(
                top: 6,
                left: 5,
                child: Container(
                  width: 75,
                  height: 75,
                  decoration:
                  BoxDecoration(color: Colors.white30, shape: BoxShape.circle),
                  child: Center(
                    child: SizedBox(
                      width: 51,
                      height: 51,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: NetworkImage(
                            img,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 80,
                left: 20,
                child: Container(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          desca,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(descb,
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold)),
                        Text(descc,
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              footer,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30),
                            ),
                            Text(
                              ' kcoal ',
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
class FootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .32,
      child: Row(
        children: <Widget>[
          FoodItem(
            color: Color.fromRGBO(254, 158, 142, 1),
            img:
            'https://i5.walmartimages.com/asr/2017badc-eac7-402e-a786-cd50351b023a_1.be610ff5d7dfe9ca0ec36b831bc5c2c5.png',
            title: 'BreakFast',
            desca: 'Apple',
            descb: 'good',
            descc: 'enough',
            footer: '535',
          ),
          FoodItem(
            color: Color.fromRGBO(105, 119, 226, 1),
            img:
            'https://www.freeiconspng.com/uploads/junk-food-png-transparent-images--png-all-15.png',
            title: 'Lunch',
            desca: 'Meat',
            descb: 'good',
            descc: 'enough',
            footer: '350',
          ),
          FoodItem(
            color: Color.fromRGBO(251, 132, 170, 1),
            img:
            'https://lh3.googleusercontent.com/proxy/2WvxMrh0XeqG6YxZObVCmWrmwZUjA7LToJvmW3E55lMJ-5lQNk0weoaKVZ7sXRisZCzlKrzNIcmi0A2kAtcfnwSt2bEzAmkZIJuuvbSYbEvH_4clRdKYdFCMBRvieXJ_SbtDNZ0-d_w',
            title: 'Snack',
            desca: 'cheese',
            descb: 'good',
            descc: 'enough',
            footer: '535',
          ),
        ],
      ),
    );
  }
}