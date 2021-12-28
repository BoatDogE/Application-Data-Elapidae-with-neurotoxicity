import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Snake3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('งูเห่าด่างพ่นพิษ'),
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
                        'assets/images/bwspitt.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Image.asset(
                      'assets/images/bwspitt2.jpg',
                      width: 300,
                    ),
                    Image.asset(
                      'assets/images/bwspitt3.jpg',
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
                height: 220,
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
                          '  ทั่วไปเหมือนงูเห่าไทย ที่แตกต่างเห็นได้ชัดคือ งูเห่าด่าง พ่นพิษเมื่อโตเต็มที่จะมี'
                          'ขนาดขนาดเล็กกว่างูเห่าไทยมากเป็นงูที่ว่องไว ปราดเปรียว ดุกว่างูเห่าไทย พ่นพิษได้ไกลประมาณ 2 เมตร ต่อมพิษผลิตนํ้าพิษได้เร็ว หลังจากที่ยั่วให้พ่นพิษออกมามาก ๆ จนหมดนํ้าพิษ และปล่อยให้งูพักนิ่ง สัก 20 นาที ก็จะมีนํ้าพิษพ่นออกมาได้อีกมีรูเปิดอยู่ทางหน้าของเขี้ยว ทำให้พ่นพิษได้สะดวก',
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
                      child: new Text(
                        '  กาญจนบุรี อ่างทอง สุพรรณบุรี ตาก บริเวณที่ลุ่มค่อนข้างชื้น อาศัยอยู่ในจอมปลวก ทุ่งนา หรือพบบนภูเขาที่ระดับความสูง 900 เมตร ออกหากินในเวลาพลบค่ำโดยหากินตามพื้นดิน',
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
                          ' พิษของงูเห่าพ่นพิษหากถูกผิวหนังจะไม่เกิดผลใด ๆ แต่ถ้าโดนเข้าตา จะทำให้ตาบอดได้ ซึ่งพิษของงูเห่าพ่นพิษมีผลกระทบและทำให้เหยื่อมีอาการอัมพาตได้รุนแรงกว่างูเห่าทั่วไป',
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
