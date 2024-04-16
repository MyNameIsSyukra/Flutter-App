import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firstapp/services/word_time.dart';

class timeWorld extends StatefulWidget {
  const timeWorld({super.key});
  @override
  State<timeWorld> createState() => _timeWorld();
}

class _timeWorld extends State<timeWorld> {
  Map data = {};

  @override
  void initState() {
    super.initState();
    // setupWorldTime();
  }
  // String time = 'loading';
  //
  // void setupWorldTime() async {
  //   WorldTime instance = WorldTime(location: 'Indonesia', flag: 'indonesia.png', url: 'Asia/Jakarta');
  //   await instance.getTime();
  //   print(instance.time);
  //   setState(() {
  //     time = instance.time;
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments as Map ?? {};
    Color textColor = data['isDaytime'] ? Colors.black : Colors.white;
    String bgImage = data['isDaytime'] ? 'daytime.jpg' : 'nightime.jpg';
    Color bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo;
    return Scaffold(
      appBar: AppBar(
        title: Text('TimeIs',style: TextStyle(
          color: Colors.white,),),
        centerTitle: true,
        backgroundColor: Colors.black
      ),
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover,
              )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 300.0, 0, 0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
                Text(
                    data['time'],
                    style: TextStyle(
                        fontSize: 66.0,
                        color: textColor
                    )
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(300.0, 50.0), // Button width and height
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black), // Ganti dengan warna yang diinginkan
                  ),
                  onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, '/location');
                  if(result != null){
                  setState(() {
                    data = {
                      'time': result['time'],
                      'location': result['location'],
                      'isDaytime': result['isDaytime'],
                      'flag': result['flag']
                    };
                    });
                  }
                },
                child:Text('Choose Location', style: TextStyle(
                  color: Colors.white,
                  fontSize:20,
                ),) ,)
              ],
    ),
    ]
    ),
    ),
    ),
    ),
    );
  }
}