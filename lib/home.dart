import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:retrofit_demo/response/api_helper.dart';

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    _getTasks();

  }

  _getTasks() async {
    final client = RestClient(Dio(BaseOptions(contentType: "application/json")));
    var time = DateTime.now();
    var _future = await Future.wait([client.getTasks(),client.getTasks(),client.getTasks(),client.getTasks(),client.getTasks(),client.getTasks()]);
    var time2 = DateTime.now();
    print(time2.difference(time).inMilliseconds ?? "FAILLLL");
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Retrofit',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[300],
          centerTitle: true,
          title: const Text('Flutter Retrofit', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
        ),
        body: Container(),
      ),
    );
  }




}
