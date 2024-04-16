import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../services/word_time.dart';


class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int likes = 0;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('My Profile', style: TextStyle(
            color: Colors.white,),),
          centerTitle: true,
          elevation: 0.0
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            likes += 1;
          });
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
      ),
      body:Padding(
        padding: EdgeInsets.all(30.0),
        child:
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child:CircleAvatar(
                  backgroundImage: AssetImage('assets/saya.JPG'),
                  radius: 70,
                ),
              ),
              Divider(
                height: 60,
                color: Colors.grey,
              ),
              Text('Nama Lengkap',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              Text(
                'Syukra Wahyu Ramadhan',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
              Text('Kontak',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'sukrawahyu@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )]),
              // SizedBox(height: ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.gite,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'MyNameIsSyukra',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )]
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                        '$likes',
                        style: TextStyle(
                          color: Colors.amberAccent[200],
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                          letterSpacing: 2.0,)
                    )
                  ]),
              SizedBox(height: 5),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text('Feature',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 29,
                        fontWeight: FontWeight.bold,
                      )),
                  ]
              ),
              SizedBox(height: 20),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(125.0, 50.0), // Button width and height
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black), // Ganti dengan warna yang diinginkan
                ),
                onPressed: (){Navigator.pushNamed(context, '/quote');},
                child: const Text('Quote', style: TextStyle(
                  color: Colors.white,
                  fontSize:15,
                ),),
              ),
              SizedBox(width: 50),
              TextButton(
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(125.0, 50.0), // Button width and height
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black), // Ganti dengan warna yang diinginkan
                ),
                onPressed: (){Navigator.pushNamed(context,'/loading');},
                child: const Text('TimeIsNow', style: TextStyle(
                  color: Colors.white,
                  fontSize:15,
                ),),
              ),]),
              SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(125.0, 50.0), // Button width and height
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black), // Ganti dengan warna yang diinginkan
                      ),
                      onPressed: (){Navigator.pushNamed(context, '/todo');},
                      child: const Text('ToDo', style: TextStyle(
                        color: Colors.white,
                        fontSize:15,
                      ),),
                    ),]),
            ]),
      ),
    );
  }
}