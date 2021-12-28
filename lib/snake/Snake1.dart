import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Snake1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('งูเห่าไทย'),
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
                        'assets/images/hao.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Image.asset(
                      'assets/images/hao2.jpg',
                      width: 300,
                    ),
                    Image.asset(
                      'assets/images/hao3.jpg',
                      fit: BoxFit.cover,
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
                          '  งูเห่าจัดเป็นงูที่อันตราย มีนิสัยดุร้ายเมื่อตกใจหรือต้องการ'
                          'ขู่ศัตรู มักทำเสียงขูฟู่ ๆโดยพ่นลมออกทางรูจมูกและแผ่แผ่นหนังที่อยู่หลังบริเวณคอเป็นแผ่น'
                          'ด้านข้างเรียกว่า แม่เบี้ย หรือ พังพาน ซึ่ง บริเวณแม่เบี้ยนี้จะมีลวดลายเป็นดอกดวงสีขาวหรือสีเหลือง'
                          'นวลเป็นรูปลักษณ์ต่าง ๆ เช่น วงกลม วงแหวน อานม้า สี่เหลี่ยม ลายคาดขวาง',
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
                        '  งูเห่าไทยมักอาศัยอยู่ในบริเวณที่ลุ่มค่อนข้างชื้น ออกหากินเวลาพลบ'
                        'ค่ำตามพื้นดิน แต่สามารถว่ายน้ำหรือขึ้นต้นไม้ได้ดี',
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
                //alignment: Alignment.bottomRight,
                //color: Colors.blue,

                child: Container(
                  child: Card(
                      elevation: 4,
                      color: Colors.orange[200],
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 10, top: 10, bottom: 10),
                        child: Text(
                          '  เมื่อถูกฉกหรือกัดจะมีอาการ กล้ามเนื้ออ่อนแรง หนังตาตก หายใจลำบากกลืน'
                          'ลำบาก พูดไม่ชัด',
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
