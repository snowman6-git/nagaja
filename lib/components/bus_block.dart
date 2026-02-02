import 'package:nagaja/models/bus_info.dart';
import 'package:flutter/material.dart';

class BusBlock extends StatelessWidget {
  final BusData bus; //models에 있는 클래스의 구조를 json의 흔한구조처럼 key.value처럼 가져오게 선언
  final bool isTop;
  const BusBlock({
    super.key,
    this.isTop = false,
    required this.bus, // 부모에서 const값(models-final-변수: 데이터) 식으로 넘겨줘야 함
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: isTop ? 10 : 30,
              bottom: isTop ? 10 : 0,
              right: isTop ? 10 : 30,
            ),

            child: InkWell(
              child: Container(
                width: double.infinity,
                //isTop이 true면 2번째 값으로
                height: isTop ? 200 : 100,
                decoration: BoxDecoration(
                  // color: Color(0XFFfffff0),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 3,
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // InkWell(
      //   child: Container(
      //     width: double.infinity,
      //     height: 200,
      //     padding: const EdgeInsets.all(12),
      //     margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      //     decoration: BoxDecoration(
      //       color: Colors.grey[900],
      //       borderRadius: BorderRadius.circular(12),
      //     ),
      //     child:
      //     Column(
      //       children: [
      //         Expanded(
      //           flex: 1,
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [Text('도착까지: 1:59 남았어요.')],
      //           ),
      //         ),
      //
      //         Expanded(
      //           flex: 3,
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Text(
      //                   "20번 버스",
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold
      //                 ),
      //               )
      //
      //             ],
      //           ),
      //         ),
      //
      //         Expanded(
      //           flex: 1,
      //           child: Row(
      //             //버스가 경유하는 정류장을 표기 + 현재 버스가 있는곳
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //
      //             children: [
      //               Text("종점"),
      //               Text("내 위치"),
      //               Text("정류장"),
      //               Text("현재 버스 위치"),
      //               Text("정류장1"),
      //               Text("기점"),
      //
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // )

      // Padding(
      //   padding: EdgeInsets.all(30),
      //   child: Neumorphic(
      //     style: NeumorphicStyle(
      //       shape: NeumorphicShape.convex,
      //       boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
      //       depth: 5, // 튀어나온 정도
      //       lightSource: LightSource.topLeft,
      //       color: Colors.white,
      //     ),
      //     child: Container(
      //       width: double.infinity,
      //       height: 200,
      //       padding: const EdgeInsets.all(12),
      //       margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      //       decoration: BoxDecoration(
      //         color: Colors.white,
      //         borderRadius: BorderRadius.circular(12),
      //       ),
      //     ),
      //   ),
      // ),

      // InkWell(
      //   child: Container(
      //     width: double.infinity,
      //     height: 200,
      //     padding: const EdgeInsets.all(12),
      //     margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      //     decoration: BoxDecoration(
      //       color: Colors.grey[900],
      //       borderRadius: BorderRadius.circular(12),
      //     ),
      //     child:
      //     Column(
      //       children: [
      //         Expanded(
      //           flex: 1,
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [Text('도착까지: 1:59 남았어요.')],
      //           ),
      //         ),
      //
      //         Expanded(
      //           flex: 3,
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Text(
      //                   "20번 버스",
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold
      //                 ),
      //               )
      //
      //             ],
      //           ),
      //         ),
      //
      //         Expanded(
      //           flex: 1,
      //           child: Row(
      //             //버스가 경유하는 정류장을 표기 + 현재 버스가 있는곳
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //
      //             children: [
      //               Text("종점"),
      //               Text("내 위치"),
      //               Text("정류장"),
      //               Text("현재 버스 위치"),
      //               Text("정류장1"),
      //               Text("기점"),
      //
      //             ],
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
