import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';
import 'package:project/snake/Snake1.dart';

class Profile extends StatefulWidget {
  @override
  _GoogleMapPageState createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<Profile> {
  Completer<GoogleMapController> _controller = Completer();
  // late BitmapDescriptor mapMarker;

  late LocationData currentLocation;

  Future<LocationData> getCurrentLocation() async {
    Location location = Location();
    return await location.getLocation();
  }

  Future _goToCurrentLocation() async {
    final GoogleMapController controller = await _controller.future;
    currentLocation = await getCurrentLocation();

    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(currentLocation.latitude, currentLocation.longitude),
      zoom: 12,
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โรงพยาบาลในภาคกลาง',
            style: TextStyle(
              fontSize: 30,
            )),
        centerTitle: true,
        //   backgroundColor: Colors.green[200],
      ),
      body: GoogleMap(
        //satellite ใช้อันนี้จะไม่เห็นมาคเก้ออื่นๆ
        trafficEnabled: true,
        myLocationEnabled: true,
        zoomGesturesEnabled: true,
        myLocationButtonEnabled: true,
        zoomControlsEnabled: true,

        mapType: MapType.satellite,
        markers: <Marker>[
          Marker(
            markerId: MarkerId('marker1'),
            position: LatLng(14.3438585, 100.5599495),
            infoWindow:
                InfoWindow(title: 'โรงบาลอยุธยา', snippet: '035-243-762'),
          ),
          Marker(
            markerId: MarkerId('marker2'),
            position: LatLng(14.566132, 100.723512),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลท่าเรือ', snippet: '035-341-300'),
          ),
          Marker(
            markerId: MarkerId('marker3'),
            position: LatLng(14.3981303, 100.592826),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสมเด็จพระสังฆราช', snippet: '035-743-341'),
          ),
          Marker(
            markerId: MarkerId('marker4'),
            position: LatLng(14.317379, 100.297447),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลบางซ้าย	', snippet: '035-375-908'),
          ),
          Marker(
            markerId: MarkerId('marker5'),
            position: LatLng(14.654276, 100.588375),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบ้านแพรก	', snippet: '035-386-121-2'),
          ),
          Marker(
            markerId: MarkerId('marker6'),
            position: LatLng(14.367144, 100.487037),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลบางบาล', snippet: '035-307-770'),
          ),
          Marker(
            markerId: MarkerId('marker7'),
            position: LatLng(14.446507, 100.371866),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลผักไห่	', snippet: '035-391-306'),
          ),
          Marker(
            markerId: MarkerId('marker8'),
            position: LatLng(14.4447194, 100.7381788),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลภาชี	', snippet: '035-311-112'),
          ),
          Marker(
            markerId: MarkerId('marker9'),
            position: LatLng(14.224592, 100.700177),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลวังน้อย		', snippet: '035-271-033'),
          ),
          Marker(
            markerId: MarkerId('marker10'),
            position: LatLng(14.321137, 100.388108),
            infoWindow:
                InfoWindow(title: '	โรงพยาบาลเสนา	', snippet: '056-689-018'),
          ),
          Marker(
            markerId: MarkerId('marker11'),
            position: LatLng(14.316365, 100.411135),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลศุภมิตรเสนา	', snippet: '035-289-572'),
          ),
          Marker(
            markerId: MarkerId('marker12'),
            position: LatLng(14.361121, 100.645581),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลอุทัย		', snippet: '035-356-336'),
          ),
          Marker(
            markerId: MarkerId('marker13'),
            position: LatLng(14.476474, 100.534257),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบางปะหัน		', snippet: '056-698-042'),
          ),
          Marker(
            markerId: MarkerId('marker14'),
            position: LatLng(14.213767, 100.576826),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลบางปะอิน		', snippet: ' - '),
          ),
          Marker(
            markerId: MarkerId('marker15'),
            position: LatLng(16.4630205, 99.5283366),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลกำแพงเพชร	', snippet: '055-714-223-5'),
          ),
          Marker(
            markerId: MarkerId('marker16'),
            position: LatLng(16.634701, 99.347906),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลโกสัมพีนคร	', snippet: '055-714-081'),
          ),
          Marker(
            markerId: MarkerId('marker17'),
            position: LatLng(16.059628, 99.861067),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลขาณุวรลักษบุรี', snippet: '055-779-013'),
          ),
          Marker(
            markerId: MarkerId('marker18'),
            position: LatLng(16.215074, 99.709791),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลคลองขลุง	', snippet: '055-781-006'),
          ),
          Marker(
            markerId: MarkerId('marker19'),
            position: LatLng(16.183309, 99.325099),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลคลองลาน	', snippet: '055-712-473'),
          ),
          Marker(
            markerId: MarkerId('marker20'),
            position: LatLng(16.2982101, 99.8138173),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลทรายทองวัฒนา	', snippet: '055-732-105'),
          ),
          Marker(
            markerId: MarkerId('marker21'),
            position: LatLng(16.477425, 99.884197),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลไทรงาม	', snippet: '055-791-006'),
          ),
          Marker(
            markerId: MarkerId('marker22'),
            position: LatLng(16.167513, 99.950522),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบึงสามัคคี	', snippet: '055-733-323'),
          ),
          Marker(
            markerId: MarkerId('marker23'),
            position: LatLng(16.062906, 99.411077),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลปางศิลาทอง	', snippet: '055-741-951'),
          ),
          Marker(
            markerId: MarkerId('marker24'),
            position: LatLng(16.676417, 99.586324),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพรานกระต่าย	', snippet: '055-775-675'),
          ),
          Marker(
            markerId: MarkerId('marker25'),
            position: LatLng(16.598562, 99.845337),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลลานกระบือ	', snippet: '055-769-085'),
          ),
          Marker(
            markerId: MarkerId('marker26'),
            position: LatLng(15.191724, 100.127593),
            infoWindow:
                InfoWindow(title: '	โรงพยาบาลชัยนาท	', snippet: '056-411-055'),
          ),
          Marker(
            markerId: MarkerId('marker27'),
            position: LatLng(14.962974, 99.910870),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลเนินขาม		', snippet: '037-310-000'),
          ),
          Marker(
            markerId: MarkerId('marker28'),
            position: LatLng(15.259053, 100.039230),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลวัดสิงห์		',
                snippet: '056-461-344 , 056-461-316'),
          ),
          Marker(
            markerId: MarkerId('marker29'),
            position: LatLng(15.105787, 100.265329),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสรรพยา		', snippet: '056-436-364-6'),
          ),
          Marker(
            markerId: MarkerId('marker30'),
            position: LatLng(15.272455, 99.866860),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลหนองมะโมง		', snippet: '037 – 391-510'),
          ),
          Marker(
            markerId: MarkerId('marker31'),
            position: LatLng(15.2996877, 100.0915391),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลคริสเตียนมโนรมย์	', snippet: '056-491-005'),
          ),
          Marker(
            markerId: MarkerId('marker32'),
            position: LatLng(15.2967036, 100.1853418),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลมโนรมย์		', snippet: '056-431-376-8'),
          ),
          Marker(
            markerId: MarkerId('marker33'),
            position: LatLng(14.286733, 101.171314),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลโรงเรียนนายร้อยพระจุลจอมเกล้า',
                snippet: '037-310-000'),
          ),
          Marker(
            markerId: MarkerId('marker34'),
            position: LatLng(14.252339, 101.066796),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลบ้านนา	', snippet: '037-382-015-7'),
          ),
          Marker(
            markerId: MarkerId('marker35'),
            position: LatLng(14.149941, 101.268153),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลปากพลี	', snippet: '037-399-792-4'),
          ),
          Marker(
            markerId: MarkerId('marker36'),
            position: LatLng(14.125131, 101.007507),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลองครักษ์	', snippet: '037–391-510'),
          ),
          Marker(
            markerId: MarkerId('marker37'),
            position: LatLng(13.8191549, 100.0751043),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลนครปฐม	', snippet: '034-254-154'),
          ),
          Marker(
            markerId: MarkerId('marker38'),
            position: LatLng(13.7484449, 100.5821316),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลกรุงเทพ	', snippet: '034-219-600'),
          ),
          Marker(
            markerId: MarkerId('marker39'),
            position: LatLng(14.007278, 99.974706),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลกำแพงแสน	', snippet: '034-281-687'),
          ),
          Marker(
            markerId: MarkerId('marker40'),
            position: LatLng(14.102777, 99.939216),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลจันทรุเบกษา	', snippet: '034-383-041-6'),
          ),
          Marker(
            markerId: MarkerId('marker41'),
            position: LatLng(13.965906, 100.086027),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลดอนตูม	', snippet: '034-381-768'),
          ),
          Marker(
            markerId: MarkerId('marker42'),
            position: LatLng(13.900323, 100.216471),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลหลวงพ่อเปิ่น	', snippet: '034-277-085-88'),
          ),
          Marker(
            markerId: MarkerId('marker43'),
            position: LatLng(13.8755553, 100.2118667),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลห้วยพลู	', snippet: '034-389-217'),
          ),
          Marker(
            markerId: MarkerId('marker44'),
            position: LatLng(14.011910, 100.174117),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลบางเลน	', snippet: '034-391-129'),
          ),
          Marker(
            markerId: MarkerId('marker45'),
            position: LatLng(13.744488, 100.213094),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสามพราน	',
                snippet: '034-321-998 , 034-311-021'),
          ),
          Marker(
            markerId: MarkerId('marker46'),
            position: LatLng(13.852932, 100.273911),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลตุลาการเฉลิมพระเกียรติ',
                snippet: '034-298-265-9'),
          ),
          Marker(
            markerId: MarkerId('marker47'),
            position: LatLng(15.6739745, 100.1271613),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลค่ายจิรประวัติ', snippet: '056-255-064'),
          ),
          Marker(
            markerId: MarkerId('marker48'),
            position: LatLng(15.708345, 100.138292),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลรัตนเวช', snippet: '056-220-320-8'),
          ),
          Marker(
            markerId: MarkerId('marker49'),
            position: LatLng(15.7068651, 100.1382659),
            infoWindow: InfoWindow(
                title: '	โรงพยาบาลสวรรค์ประชารักษ์', snippet: '056-228-687-8'),
          ),
          Marker(
            markerId: MarkerId('marker50'),
            position: LatLng(15.868012, 100.108666),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลเก้าเลี้ยว	', snippet: '056-383-562'),
          ),
          Marker(
            markerId: MarkerId('marker51'),
            position: LatLng(15.553462, 100.066224),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลโกรกพระ	', snippet: '056-291-200'),
          ),
          Marker(
            markerId: MarkerId('marker52'),
            position: LatLng(15.868712, 100.271914),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลชุมแสง	', snippet: '056-282-223'),
          ),
          Marker(
            markerId: MarkerId('marker53'),
            position: LatLng(15.346692, 100.493297),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลตากฟ้า	', snippet: '056-241-027'),
          ),
          Marker(
            markerId: MarkerId('marker54'),
            position: LatLng(15.241280, 100.351654),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลตาคลี	', snippet: '056-801-112'),
          ),
          Marker(
            markerId: MarkerId('marker55'),
            position: LatLng(15.781473, 99.521584),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลแม่วงก์	', snippet: '056-238-012'),
          ),
          Marker(
            markerId: MarkerId('marker56'),
            position: LatLng(15.757546, 99.815772),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลลาดยาว', snippet: '056-385-011'),
          ),
          Marker(
            markerId: MarkerId('marker57'),
            position: LatLng(15.633851, 99.543193),
            infoWindow: InfoWindow(title: 'โรงพยาบาลชุมตาบง	', snippet: '-'),
          ),
          Marker(
            markerId: MarkerId('marker58'),
            position: LatLng(15.642519, 100.485872),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลท่าตะโก	',
                snippet: '056–249-036 , 056 – 249-509'),
          ),
          Marker(
            markerId: MarkerId('marker59'),
            position: LatLng(15.947028, 99.980199),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลบรรพตพิสัย	', snippet: ' - '),
          ),
          Marker(
            markerId: MarkerId('marker60'),
            position: LatLng(15.478088, 100.139117),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพยุหะคีรี	',
                snippet: '056-341-755 , 056-342-001'),
          ),
          Marker(
            markerId: MarkerId('marker61'),
            position: LatLng(15.6739724, 100.1270767),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลไพศาลี	',
                snippet: '056-259-014 , 056-259-378'),
          ),
          Marker(
            markerId: MarkerId('marker62'),
            position: LatLng(15.866628, 100.592902),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลหนองบัว	',
                snippet: '056-876-222 , 056-876-223 , 056-876-224'),
          ),
          Marker(
            markerId: MarkerId('marker63'),
            position: LatLng(13.8650512, 100.4812792),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาล พระนั่งเกล้า	', snippet: '025-284-567'),
          ),
          Marker(
            markerId: MarkerId('marker64'),
            position: LatLng(13.855483, 100.542862),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลนนทเวช		', snippet: '025-967-888'),
          ),
          Marker(
            markerId: MarkerId('marker65'),
            position: LatLng(13.981969, 100.325773),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลไทรน้อย		', snippet: '029-046-446-9'),
          ),
          Marker(
            markerId: MarkerId('marker66'),
            position: LatLng(13.805052, 100.472225),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลบางกรวย		', snippet: '024-475-582'),
          ),
          Marker(
            markerId: MarkerId('marker67'),
            position: LatLng(13.9181232, 100.4229856),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบางบัวทอง		',
                snippet: '025-717-899 , 025-717-900'),
          ),
          Marker(
            markerId: MarkerId('marker68'),
            position: LatLng(13.845642, 100.410856),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบางใหญ่		',
                snippet: '025-631-080 , 025-631-081'),
          ),
          Marker(
            markerId: MarkerId('marker69'),
            position: LatLng(13.949465, 100.461259),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลปากเกร็ด		', snippet: '029-609-900'),
          ),
          Marker(
            markerId: MarkerId('marker70'),
            position: LatLng(13.9101905, 100.498161),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลวิภารามปากเกร็ด	',
                snippet: '020-924-900 , 029-609-655'),
          ),
          Marker(
            markerId: MarkerId('marker71'),
            position: LatLng(14.0204508, 100.5232222),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลปทุมธานี		', snippet: '025-988-888'),
          ),
          Marker(
            markerId: MarkerId('marker72'),
            position: LatLng(14.095278, 100.727312),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลคลองหลวง		', snippet: '029-046-446-9'),
          ),
          Marker(
            markerId: MarkerId('marker73'),
            position: LatLng(14.018546, 100.7298126),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาธัญบุรี		', snippet: '025-772-600-2'),
          ),
          Marker(
            markerId: MarkerId('marker74'),
            position: LatLng(14.0366867, 100.415743),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลลาดหลุมแก้ว		', snippet: '025-991-650-1'),
          ),
          Marker(
            markerId: MarkerId('marker75'),
            position: LatLng(13.956859, 100.857668),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลลำลูกกา		',
                snippet: '025-631-080 , 025-631-081'),
          ),
          Marker(
            markerId: MarkerId('marker76'),
            position: LatLng(14.086514, 100.573740),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลสามโคก		', snippet: '021-993-795'),
          ),
          Marker(
            markerId: MarkerId('marker77'),
            position: LatLng(14.141306, 100.823958),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลหนองเสือ		',
                snippet: '025-491-235 , 025-491-236 , 025-491-328'),
          ),
          Marker(
            markerId: MarkerId('marker78'),
            position: LatLng(16.435002, 100.344833),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพิจิตร		', snippet: '056-615-073-80'),
          ),
          Marker(
            markerId: MarkerId('marker79'),
            position: LatLng(16.020301, 100.548425),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลดงเจริญ		', snippet: '056-039-790-2'),
          ),
          Marker(
            markerId: MarkerId('marker80'),
            position: LatLng(16.020290, 100.548458),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพระยุพราชตะพานหิน	',
                snippet: '056-621-355 ต่อ 339'),
          ),
          Marker(
            markerId: MarkerId('marker81'),
            position: LatLng(16.158922, 100.603798),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลทับคล้อ		', snippet: '056-641-131'),
          ),
          Marker(
            markerId: MarkerId('marker82'),
            position: LatLng(16.039983, 100.351722),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบางมูลนาก		',
                snippet: '056-631-131-2 , 056-631-164'),
          ),
          Marker(
            markerId: MarkerId('marker83'),
            position: LatLng(14.566116, 100.723513),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลท่าเรือ		',
                snippet: '035-340-002 , 035-341-300'),
          ),
          Marker(
            markerId: MarkerId('marker84'),
            position: LatLng(16.194055, 100.120714),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบึงนาราง		', snippet: '056-039-709'),
          ),
          Marker(
            markerId: MarkerId('marker85'),
            position: LatLng(16.194033, 100.120710),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลโพทะเล		', snippet: '056-681-115'),
          ),
          Marker(
            markerId: MarkerId('marker86'),
            position: LatLng(16.309127, 100.274900),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลโพธิ์ประทับช้าง	', snippet: '056-689-018'),
          ),
          Marker(
            markerId: MarkerId('marker87'),
            position: LatLng(16.309111, 100.274914),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลวชิรบารมี		', snippet: '056-692-270-7'),
          ),
          Marker(
            markerId: MarkerId('marker88'),
            position: LatLng(16.416174, 100.520536),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลวังทรายพูน		', snippet: '056-695-234'),
          ),
          Marker(
            markerId: MarkerId('marker89'),
            position: LatLng(16.506632, 100.467887),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสากเหล็ก		', snippet: '056-698-042'),
          ),
          Marker(
            markerId: MarkerId('marker90'),
            position: LatLng(16.5115056, 100.2059695),
            infoWindow:
                InfoWindow(title: 'อำเภอสามง่าม		', snippet: '056-691-239'),
          ),
          Marker(
            markerId: MarkerId('marker91'),
            position: LatLng(16.834167, 100.254301),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลค่ายสมเด็จพระนเรศวรมหาราช	',
                snippet: '055-245-070-9 ต่อ 73009'),
          ),
          Marker(
            markerId: MarkerId('marker92'),
            position: LatLng(16.808420, 100.263549),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพุทธชินราช		', snippet: '055-219-842-9'),
          ),
          Marker(
            markerId: MarkerId('marker93'),
            position: LatLng(16.748543, 100.189089),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลมหาวิทยาลัยนเรศวร	', snippet: '055-261-890-9'),
          ),
          Marker(
            markerId: MarkerId('marker94'),
            position: LatLng(17.273179, 100.601506),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลชาติตระการ		', snippet: '055-381-020'),
          ),
          Marker(
            markerId: MarkerId('marker95'),
            position: LatLng(17.093248, 100.829316),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพระยุพราชนครไทย	', snippet: '055-389-060-1'),
          ),
          Marker(
            markerId: MarkerId('marker96'),
            position: LatLng(16.562247, 100.623594),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลเนินมะปราง		', snippet: '055-399-055-6'),
          ),
          Marker(
            markerId: MarkerId('marker97'),
            position: LatLng(16.575853, 100.317897),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบางกระทุ่ม		', snippet: '055-296-478-80'),
          ),
          Marker(
            markerId: MarkerId('marker98'),
            position: LatLng(16.759354, 100.118861),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบางระกำ		',
                snippet: '055-371-168 , 055-371-170'),
          ),
          Marker(
            markerId: MarkerId('marker99'),
            position: LatLng(17.034884, 100.201189),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพรหมพิราม		', snippet: '055-369-034'),
          ),
          Marker(
            markerId: MarkerId('marker100'),
            position: LatLng(16.838789, 100.435125),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลวังทอง		', snippet: '056-782-100'),
          ),
          Marker(
            markerId: MarkerId('marker101'),
            position: LatLng(16.9885435, 100.3269074),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลวัดโบสถ์		', snippet: '055-291-727-30'),
          ),
          Marker(
            markerId: MarkerId('marker102'),
            position: LatLng(16.427263, 101.153438),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลเพชรบูรณ์		', snippet: '056-712-235-9'),
          ),
          Marker(
            markerId: MarkerId('marker103'),
            position: LatLng(16.637072, 100.999611),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลเขาค้อ		', snippet: '056-728-075-6'),
          ),
          Marker(
            markerId: MarkerId('marker104'),
            position: LatLng(16.187492, 100.870565),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลชนแดน		', snippet: '056-761-301-2'),
          ),
          Marker(
            markerId: MarkerId('marker105'),
            position: LatLng(16.765177, 101.674862),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลน้ำหนาว		', snippet: '056-779-030'),
          ),
          Marker(
            markerId: MarkerId('marker107'),
            position: LatLng(15.767981, 101.010229),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบึงสามพัน		', snippet: '056-731-284'),
          ),
          Marker(
            markerId: MarkerId('marker108'),
            position: LatLng(16.3500291, 100.7887118),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลวังโป่ง		', snippet: '056-758-224-6'),
          ),
          Marker(
            markerId: MarkerId('marker109'),
            position: LatLng(15.6565353, 101.037886),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลวิเชียรบุรี		', snippet: '056-791-211'),
          ),
          Marker(
            markerId: MarkerId('marker110'),
            position: LatLng(15.449682, 101.055409),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลศรีเทพ		', snippet: '036-646-342-6'),
          ),
          Marker(
            markerId: MarkerId('marker111'),
            position: LatLng(15.991938, 101.063209),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลหนองไผ่		', snippet: '056-782-100'),
          ),
          Marker(
            markerId: MarkerId('marker112'),
            position: LatLng(16.885602, 101.230342),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสมเด็จพระยุพราชหล่มเก่า	',
                snippet: '056-711-010'),
          ),
          Marker(
            markerId: MarkerId('marker113'),
            position: LatLng(16.778478, 101.236438),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลหล่มสัก		', snippet: '036-776-240'),
          ),
          Marker(
            markerId: MarkerId('marker114'),
            position: LatLng(14.803977, 100.651592),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลลพบุรี		', snippet: '036-621-537-45'),
          ),
          Marker(
            markerId: MarkerId('marker115'),
            position: LatLng(14.8488849, 100.6651028),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลอานันทมหิดล	', snippet: '036-414-350-4'),
          ),
          Marker(
            markerId: MarkerId('marker116'),
            position: LatLng(15.3866898, 100.8225512),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลโคกเจริญ		', snippet: '036-651-106-7'),
          ),
          Marker(
            markerId: MarkerId('marker117'),
            position: LatLng(15.068539, 100.737931),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลโคกสำโรง		', snippet: '036-624-942'),
          ),
          Marker(
            markerId: MarkerId('marker118'),
            position: LatLng(15.2155696, 101.1435468),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลชัยบาดาล		', snippet: '036-461-022'),
          ),
          Marker(
            markerId: MarkerId('marker119'),
            position: LatLng(14.812542, 100.521361),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลท่าวุ้ง		', snippet: '036-481-208'),
          ),
          Marker(
            markerId: MarkerId('marker120'),
            position: LatLng(15.065499, 101.124384),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลท่าหลวง		', snippet: '036-646-342-6'),
          ),
          Marker(
            markerId: MarkerId('marker121'),
            position: LatLng(14.8555267, 100.9831158),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพัฒนานิคม		', snippet: '036-491-341'),
          ),
          Marker(
            markerId: MarkerId('marker122'),
            position: LatLng(15.251949, 101.323385),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลลำสนธิ		', snippet: '036-633-185'),
          ),
          Marker(
            markerId: MarkerId('marker123'),
            position: LatLng(15.194084, 100.842682),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสระโบสถ์		', snippet: '036-776-240'),
          ),
          Marker(
            markerId: MarkerId('marker124'),
            position: LatLng(15.211997, 100.666219),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลหนองม่วง		', snippet: '036-431-585'),
          ),
          Marker(
            markerId: MarkerId('marker125'),
            position: LatLng(15.044161, 100.541964),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบ้านหมี่		', snippet: '064-286-6187'),
          ),
          Marker(
            markerId: MarkerId('marker126'),
            position: LatLng(13.583856, 100.597360),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสมุทรปราการ		',
                snippet: '021-738-347 , 021-738-361 ต่อ 3097'),
          ),
          Marker(
            markerId: MarkerId('marker127'),
            position: LatLng(13.834618, 100.666154),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสินแพทย์		', snippet: '027-615-999'),
          ),
          Marker(
            markerId: MarkerId('marker128'),
            position: LatLng(13.569658, 100.835675),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลบางบ่อ		', snippet: '023-381-133'),
          ),
          Marker(
            markerId: MarkerId('marker129'),
            position: LatLng(13.652642, 100.537596),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพระประแดง		', snippet: '034-761-478'),
          ),
          Marker(
            markerId: MarkerId('marker130'),
            position: LatLng(13.648854, 100.569873),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลวิภารามชัยปราการ		', snippet: '023-639-222'),
          ),
          Marker(
            markerId: MarkerId('marker131'),
            position: LatLng(13.603832, 100.706114),
            infoWindow: InfoWindow(title: 'โรงพยาบาลบางพลี		', snippet: '-'),
          ),
          Marker(
            markerId: MarkerId('marker132'),
            position: LatLng(13.599833, 100.721239),
            infoWindow: InfoWindow(
                title: '	โรงพยาบาลจุฬารัตน์ 3 อินเตอร์',
                snippet: '020-332-900'),
          ),
          Marker(
            markerId: MarkerId('marker133'),
            position: LatLng(13.650861, 100.836154),
            infoWindow: InfoWindow(title: '	โรงพยาบาลบางเสาธง	', snippet: '-'),
          ),
          Marker(
            markerId: MarkerId('marker134'),
            position: LatLng(13.5927611, 100.5782384),
            infoWindow: InfoWindow(
                title: '	โรงพยาบาลพระสมุทรเจดีย์', snippet: '024-537-140'),
          ),
          Marker(
            markerId: MarkerId('marker135'),
            position: LatLng(13.590358, 100.104737),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบ้านแพ้ว		', snippet: '034-419-555'),
          ),
          Marker(
            markerId: MarkerId('marker136'),
            position: LatLng(13.5765005, 100.271249),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลศรีวิชัย 5		', snippet: '034-826-710-29'),
          ),
          Marker(
            markerId: MarkerId('marker137'),
            position: LatLng(13.551798, 100.279055),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสมุทรสาคร		', snippet: '034-427-099-105'),
          ),
          Marker(
            markerId: MarkerId('marker138'),
            position: LatLng(13.5567634, 100.271516),
            infoWindow:
                InfoWindow(title: '	โรงพยาบาลมหาชัย	', snippet: '034-424-990'),
          ),
          Marker(
            markerId: MarkerId('marker139'),
            position: LatLng(13.707449, 100.289600),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลศรีวิชัย 3		', snippet: '024-310-070'),
          ),
          Marker(
            markerId: MarkerId('marker140'),
            position: LatLng(13.3849425, 99.9911167),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลแม่กลอง 2	', snippet: '034-715-001-5'),
          ),
          Marker(
            markerId: MarkerId('marker141'),
            position: LatLng(13.4062354, 99.9979052),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสมเด็จพระพุทธเลิศหล้า	',
                snippet: '034-723-044-9'),
          ),
          Marker(
            markerId: MarkerId('marker142'),
            position: LatLng(13.466381, 99.943787),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลนภาลัย	', snippet: '034-761-478'),
          ),
          Marker(
            markerId: MarkerId('marker143'),
            position: LatLng(13.433952, 99.945199),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลอัมพวา		', snippet: '034-751-846 -7'),
          ),
          Marker(
            markerId: MarkerId('marker144'),
            position: LatLng(14.896708, 100.397609),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสิงห์บุรี		', snippet: '036-522-507'),
          ),
          Marker(
            markerId: MarkerId('marker145'),
            position: LatLng(14.888754, 100.398473),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสิงห์บุรีเวชการ	', snippet: '036-522-555'),
          ),
          Marker(
            markerId: MarkerId('marker146'),
            position: LatLng(14.786613, 100.293033),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลค่ายบางระจัน		', snippet: '055-625-248-9'),
          ),
          Marker(
            markerId: MarkerId('marker147'),
            position: LatLng(14.794073, 100.385950),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลท่าช้าง		',
                snippet: '055-695-145 , 055-695-168'),
          ),
          Marker(
            markerId: MarkerId('marker148'),
            position: LatLng(14.922127, 100.274557),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลบางระจัน		', snippet: '036-814-755 '),
          ),
          Marker(
            markerId: MarkerId('marker149'),
            position: LatLng(14.748534, 100.457997),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพรหมบุรี		', snippet: '036-599-481'),
          ),
          Marker(
            markerId: MarkerId('marker150'),
            position: LatLng(14.988180, 100.334182),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลอินทร์บุรี		', snippet: '036-581-332'),
          ),
          Marker(
            markerId: MarkerId('marker151'),
            position: LatLng(17.0108009, 99.7959386),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสุโขทัย		', snippet: '055-611-701-2'),
          ),
          Marker(
            markerId: MarkerId('marker152'),
            position: LatLng(16.954484, 99.965716),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลกงไกรลาศ		', snippet: '055-625-248-9'),
          ),
          Marker(
            markerId: MarkerId('marker153'),
            position: LatLng(16.827872, 99.794718),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลคีรีมาศ		',
                snippet: '055-695-145 , 055-695-168'),
          ),
          Marker(
            markerId: MarkerId('marker154'),
            position: LatLng(17.3240206, 99.5608172),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลทุ่งเสลี่ยม		',
                snippet: '055-659-175,055-659-132'),
          ),
          Marker(
            markerId: MarkerId('marker155'),
            position: LatLng(17.013603, 99.586793),
            infoWindow: InfoWindow(
                title: '	โรงพยาบาลบ้านด่านลานหอย	',
                snippet: '055-689-027,055-689-003'),
          ),
          Marker(
            markerId: MarkerId('marker156'),
            position: LatLng(17.353994, 99.993440),
            infoWindow: InfoWindow(
                title: '	โรงพยาบาลศรีนคร	', snippet: '055-652-725-6'),
          ),
          Marker(
            markerId: MarkerId('marker157'),
            position: LatLng(17.517207, 99.757298),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลศรีสัชนาลัย	', snippet: '055-671-484'),
          ),
          Marker(
            markerId: MarkerId('marker158'),
            position: LatLng(17.1662939, 99.8649478),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลศรีสังวรสุโขทัย		', snippet: '055-682-030-43'),
          ),
          Marker(
            markerId: MarkerId('marker159'),
            position: LatLng(17.302151, 99.840531),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสวรรคโลก		', snippet: '055-641-592'),
          ),
          Marker(
            markerId: MarkerId('marker160'),
            position: LatLng(14.466554, 100.116069),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลเจ้าพระยายมราช		', snippet: '035-523-394-5'),
          ),
          Marker(
            markerId: MarkerId('marker161'),
            position: LatLng(14.471549, 100.124268),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลศุภมิตร		', snippet: '035-500-283-8'),
          ),
          Marker(
            markerId: MarkerId('marker162'),
            position: LatLng(14.634432, 100.020155),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลดอนเจดีย์		', snippet: '035-591-032-4'),
          ),
          Marker(
            markerId: MarkerId('marker163'),
            position: LatLng(14.8484336, 100.098781),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลเดิมบางนางบวช		', snippet: '056-599-000'),
          ),
          Marker(
            markerId: MarkerId('marker164'),
            position: LatLng(14.840279, 99.703311),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลด่านช้าง		', snippet: '035-509-692-6'),
          ),
          Marker(
            markerId: MarkerId('marker165'),
            position: LatLng(14.771238, 99.908919),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลหนองหญ้าไซ		', snippet: '035-577-068-9'),
          ),
          Marker(
            markerId: MarkerId('marker166'),
            position: LatLng(14.398393, 100.167741),
            infoWindow: InfoWindow(
                title: '	โรงพยาบาลบางปลาม้า	', snippet: '035-400-578-80'),
          ),
          Marker(
            markerId: MarkerId('marker167'),
            position: LatLng(14.641197, 100.149564),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลศรีประจันต์		', snippet: '035-582-750-1'),
          ),
          Marker(
            markerId: MarkerId('marker168'),
            position: LatLng(14.225375, 100.028391),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสมเด็จพระสังฆราช องค์ที่ 17		',
                snippet: '036-359-134-5'),
          ),
          Marker(
            markerId: MarkerId('marker169'),
            position: LatLng(14.7535535, 100.0753097),
            infoWindow: InfoWindow(
                title: '	โรงพยาบาลสามชุก	', snippet: '035-572-219-20'),
          ),
          Marker(
            markerId: MarkerId('marker170'),
            position: LatLng(14.348734, 99.872524),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลอู่ทอง		', snippet: '035-551-422,035-565-434'),
          ),
          Marker(
            markerId: MarkerId('marker171'),
            position: LatLng(14.523640, 100.933329),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลเกษมราษฎร์		', snippet: '036-315-555'),
          ),
          Marker(
            markerId: MarkerId('marker172'),
            position: LatLng(14.534155, 100.915797),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลสระบุรี		', snippet: '036-316-555'),
          ),
          Marker(
            markerId: MarkerId('marker173'),
            position: LatLng(14.579055, 101.012163),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลแก่งคอย		', snippet: '035-623-539'),
          ),
          Marker(
            markerId: MarkerId('marker175'),
            position: LatLng(14.585797, 100.6256659),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลดอนพุด		', snippet: '035-632-828-9'),
          ),
          Marker(
            markerId: MarkerId('marker176'),
            position: LatLng(14.612652, 100.733170),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลบ้านหมอ		', snippet: '036-201-386'),
          ),
          Marker(
            markerId: MarkerId('marker177'),
            position: LatLng(14.724312, 100.801942),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลพระพุทธบาท		', snippet: '036-266-166'),
          ),
          Marker(
            markerId: MarkerId('marker178'),
            position: LatLng(14.636401, 101.197730),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลมวกเหล็ก		', snippet: '036-341-560'),
          ),
          Marker(
            markerId: MarkerId('marker179'),
            position: LatLng(14.842032, 101.120482),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลวังม่วงสัทธรรม		', snippet: '036-359-134-5'),
          ),
          Marker(
            markerId: MarkerId('marker180'),
            position: LatLng(14.370197, 100.970706),
            infoWindow: InfoWindow(title: 'โรงพยาบาลวิหารแดง		', snippet: '-'),
          ),
          Marker(
            markerId: MarkerId('marker181'),
            position: LatLng(14.548026, 100.850072),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลเสาไห้		', snippet: '036-391-253-4'),
          ),
          Marker(
            markerId: MarkerId('marker182'),
            position: LatLng(14.351220, 100.869964),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลหนองแค		', snippet: '036-212-131'),
          ),
          Marker(
            markerId: MarkerId('marker183'),
            position: LatLng(14.498716, 100.788797),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลหนองแซง	',
                snippet: '036-399-234 , 036-399-224'),
          ),
          Marker(
            markerId: MarkerId('marker184'),
            position: LatLng(14.687224, 100.713858),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลหนองโดน		', snippet: '036-397-251'),
          ),
          Marker(
            markerId: MarkerId('marker185'),
            position: LatLng(14.584753, 100.452149),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลอ่างทอง		', snippet: '035-610-006-7'),
          ),
          Marker(
            markerId: MarkerId('marker186'),
            position: LatLng(14.702446, 100.444074),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลไชโย		', snippet: '035-647-018'),
          ),
          Marker(
            markerId: MarkerId('marker187'),
            position: LatLng(14.496958, 100.443514),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลป่าโมก		', snippet: '035-623-539'),
          ),
          Marker(
            markerId: MarkerId('marker188'),
            position: LatLng(14.650315, 100.408966),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลโพธิ์ทอง		', snippet: '056-599-000'),
          ),
          Marker(
            markerId: MarkerId('marker189'),
            position: LatLng(14.593336, 100.346353),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลวิเศษชัยชาญ		', snippet: '035-632-828-9'),
          ),
          Marker(
            markerId: MarkerId('marker190'),
            position: LatLng(14.745447, 100.324039),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลแสวงหา		', snippet: '056-531-141'),
          ),
          Marker(
            markerId: MarkerId('marker191'),
            position: LatLng(14.604024, 100.261168),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลสามโก้		', snippet: '035-697-112'),
          ),
          Marker(
            markerId: MarkerId('marker192'),
            position: LatLng(15.380339, 100.019959),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลอุทัยธานี		', snippet: '056-511-08'),
          ),
          Marker(
            markerId: MarkerId('marker193'),
            position: LatLng(15.4572115, 99.8873486),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลทัพทัน		', snippet: '056-591-071'),
          ),
          Marker(
            markerId: MarkerId('marker194'),
            position: LatLng(15.078722, 99.513836),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลบ้านไร่		', snippet: '056-539-000'),
          ),
          Marker(
            markerId: MarkerId('marker195'),
            position: LatLng(15.461465, 99.549091),
            infoWindow: InfoWindow(
                title: '	โรงพยาบาลลานสัก	', snippet: '056-537-130-2'),
          ),
          Marker(
            markerId: MarkerId('marker196'),
            position: LatLng(15.577897, 99.862720),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลสว่างอารมณ์		', snippet: '056-599-000'),
          ),
          Marker(
            markerId: MarkerId('marker197'),
            position: LatLng(15.3583748, 99.9305882),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลหนองขาหย่าง		', snippet: '056-597-086'),
          ),
          Marker(
            markerId: MarkerId('marker198'),
            position: LatLng(15.3910521, 99.8501478),
            infoWindow:
                InfoWindow(title: 'โรงพยาบาลหนองฉาง		', snippet: '056-531-141'),
          ),
          Marker(
            markerId: MarkerId('marker199'),
            position: LatLng(15.282298, 99.607461),
            infoWindow: InfoWindow(
                title: 'โรงพยาบาลห้วยคต		', snippet: '056-518-005-8'),
          ),
        ].toSet(),
        initialCameraPosition: CameraPosition(
          target: LatLng(14.3555879, 100.5825482),
          zoom: 11,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.gps_not_fixed),
        onPressed: () {
          _goToCurrentLocation();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
