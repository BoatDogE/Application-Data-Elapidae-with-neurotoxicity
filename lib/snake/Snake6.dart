import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Snake6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('งูเห่าสีนวล'),
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
                        'assets/images/suphancobra.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Image.asset(
                      'assets/images/suphancobra1.jpg',
                      width: 300,
                    ),
                    Image.asset(
                      'assets/images/suphancobra2.jpg',
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
                height: 130,
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
                          '  งูเห่าสีนวลเป็นงูที่มีลักษณะผันแปรจากงูเห่าไทย มีสีนวล หรือเหลืองจาง ๆ ลูกงู'
                          'แรกเกิดจะมีสีขาวอมชมพู ไม่มีลายดอกจันที่แม่เบี้ย แต่ลักษณะทางอนุกรมวิธานที่สำคัญ	'
                          'ไม่แตกต่างจากงูเห่าไทย	',
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
                        'จังหวัดสุพรรณบุรี อ่างทอง และปทุมธานีเท่านั้น บริเวณที่ลุ่มค่อนข้างชื้น อาศัยอยู่ในจอมปลวก ทุ่งนา หรือพบบนภูเขาที่ระดับความสูง 900 เมตร ออกหากินในเวลาพลบค่ำโดยหากินตามพื้นดิน',
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
                height: 80,
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
                          '  เมื่อถูกฉกหรือกัดจะมีอาการ กล้ามเนื้ออ่อนแรง หนังตาตก หายใจลำบากกลืนลำบาก พูดไม่ชัด',
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
