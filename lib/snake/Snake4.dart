import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Snake4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('งูเห่าพ่นพิษสีน้ำตาล'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 10,
              ),
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Carousel(
                  autoplay: true,
                  autoplayDuration: Duration(seconds: 5),
                  dotSize: 5,
                  dotSpacing: 15.0,
                  indicatorBgPadding: 5,
                  dotBgColor: Colors.transparent,
                  dotVerticalPadding: 15,
                  images: [
                    InkWell(
                      onTap: () {
                        print('hi');
                      },
                      child: Image.asset(
                        'assets/images/brownspit.jpg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Image.asset(
                      'assets/images/brownspit2.png',
                      width: 300,
                    ),
                    Image.asset(
                      'assets/images/brownspit4.jpg',
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  'ลักษณะและจุดเด่น',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      height: 2, fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
              Container(
                height: 160,
                width: 850,
                margin: EdgeInsets.only(left: 4, right: 4),
                padding: EdgeInsets.only(left: 10, right: 5, top: 1),
                child: Container(
                  child: Card(
                      elevation: 4,
                      color: Colors.orange[200],
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 10, top: 10, bottom: 10),
                        child: new Text(
                          '  ทั่วไปเหมือนงูเห่าไทย ที่แตกต่างเห็นได้ชัดคือ งูเห่าพ่นพิษสีน้ำตาลงูนี้จะมีสี'
                          'น้ำตาลอมเขียว เขียวอมเทา น้ำตาลดำ ดอกจันคล้ายงูเห่าด่างพ่นพิษ นอกจากสีที่แตกต่างแล้วยังมี'
                          'ลักษณะเกล็ดที่ค่อนข้างด้านไม่มันเงาเหมือนงูเห่าด่างพ่นพิษ	',
                          style: TextStyle(fontSize: 18.0, height: 1.3),
                        ),
                      ),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  'พื้นที่อาศัย',
                  style: TextStyle(
                      height: 2, fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
              Container(
                height: 110,
                width: 850,
                margin: EdgeInsets.only(left: 2, right: 4),
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  child: Card(
                    elevation: 4,
                    color: Colors.orange[200],
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 20, right: 10, top: 10, bottom: 10),
                      child: new Text(
                        ' บริเวณที่ลุ่มค่อนข้างชื้น อาศัยอยู่ในจอมปลวก ทุ่งนา หรือพบบนภูเขาที่ระดับความสูง 900 เมตร ออกหากินในเวลาพลบค่ำโดยหากินตามพื้นดินภาคกลางตอนบน',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                child: Text(
                  'พิษ',
                  style: TextStyle(
                      height: 2, fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
              Container(
                height: 130,
                width: 850,
                margin: EdgeInsets.only(left: 2, right: 4),
                padding: EdgeInsets.only(left: 10),
                child: Container(
                  child: Card(
                      elevation: 4,
                      color: Colors.orange[200],
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 10, top: 10, bottom: 10),
                        child: Text(
                          '  พิษของงูเห่าพ่นพิษหากถูกผิวหนังจะไม่เกิดผลใด ๆ แต่ถ้าโดนเข้าตา จะทำให้ตาบอด'
                          'ได้ ซึ่งพิษของงูเห่าพ่นพิษมีผลกระทบและทำให้เหยื่อมีอาการอัมพาตได้รุนแรงกว่างูเห่าทั่วไป',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                ),
              ),
              Container(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
