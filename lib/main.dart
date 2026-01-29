import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'nagaja',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'nagaja'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  bool _isDialogOpen = false;


  @override
  void initState() {
    super.initState();
    _checkInternetConnection();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }
  Future<void> _checkInternetConnection() async{
    var connectivityResult = await _connectivity.checkConnectivity();
  }
  void _updateConnectionStatus(List<ConnectivityResult> result){
    _handleConnectionStatus(result);
  }
  void _handleConnectionStatus(List<ConnectivityResult> result){
    for (var element in result){
      //모바일 데이터 or wifi
      if (element == ConnectivityResult.mobile || element == ConnectivityResult.wifi){
        if(_isDialogOpen){
          Navigator.of(context).pop();
          _isDialogOpen = false;
        }
        return;
      //연결이 안됐다면
      } else {
        //다이얼로그 열기
        _showOfflineDialog();
      }
    }
  }

  void _showOfflineDialog(){
    if (!_isDialogOpen && mounted){
      showDialog(
          context: context,
          builder: (BuildContext context){
            _isDialogOpen = true;
            return AlertDialog(
              title: const Text("나가자"),
              content: const Text(
                  "지금은 인터넷이 연결되어있지 않아요\n"
                  "몇몇 기능이 제한되고 버스 시간이 실시간 반영되지 않을 수 있어요."
              ),
              actions: [
                TextButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                      _isDialogOpen = false;
                    },
                    child: const Text("이해했어요")
                )
              ],
            );
          }
      ).then((_) => _isDialogOpen = false);
    }
  }
  @override
  void dispose(){
    _connectivitySubscription.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center()

    );
  }
}
