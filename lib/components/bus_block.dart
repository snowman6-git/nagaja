import 'package:nagaja/models/bus_info.dart';
import 'package:flutter/material.dart';

class BusBlock extends StatelessWidget {
  final BusData bus; //models에 있는 클래스의 구조를 json의 흔한구조처럼 key.value처럼 가져오게 선언
  const BusBlock({
    super.key,
    required this.bus, // 부모에서 const값(models-final-변수: 데이터) 식으로 넘겨줘야 함
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: InkWell(
            child: Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[900], // 음악 앱 느낌의 다크한 배경
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text('${bus.number}'),
            ),
          ),
        ),
      ],
    );
  }
}
