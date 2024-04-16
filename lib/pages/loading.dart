import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firstapp/services/word_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loading extends StatefulWidget {
  const loading({super.key});
  @override
  State<loading> createState() => _loading();
}

class _loading extends State<loading>{
  void initState() {
    super.initState();
    setupWorldTime();
  }
  String time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Indonesia', flag: 'indonesia.png', url: 'Asia/Jakarta');
    await instance.getTime();
    print(instance.time);
    Navigator.pushReplacementNamed(context, '/time', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: SpinKitFadingCube(
          color: Colors.grey[900],
          size: 50.0,
        ),
      )
    );
  }

}