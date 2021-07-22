import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freshchat Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProgressIndicators(),
    );
  }
}

class ProgressIndicators extends StatefulWidget {

  @override
  _ProgressIndicatorsState createState() => _ProgressIndicatorsState();
}

class _ProgressIndicatorsState extends State<ProgressIndicators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Day 16: progress'),
        backgroundColor: Colors.brown,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SpinKitRing(color: Colors.blue),
                  SpinKitDualRing(color: Colors.red),
                  SpinKitRipple(color: Colors.brown),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SpinKitRotatingCircle(color: Colors.brown),
                  SpinKitRotatingPlain(color: Colors.amberAccent),
                  SpinKitChasingDots(color: Colors.greenAccent),
                ],
              ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SpinKitSpinningCircle(color: Colors.deepOrange, shape: BoxShape.rectangle),
                    SpinKitFadingCircle(color: Colors.grey),
                    SpinKitSpinningCircle(color: Colors.deepPurple),
                  ],
                ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SpinKitWave(color: Colors.teal, type: SpinKitWaveType.start),
                  SpinKitWave(color: Colors.blue, type: SpinKitWaveType.center),
                  SpinKitWave(color: Colors.indigoAccent, type: SpinKitWaveType.end),
                ],
              ),
              SizedBox(height: 20,),
//=======================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SpinKitFadingCube(color: Colors.grey),
                  SpinKitCubeGrid(size: 51.0, color: Colors.brown),
                  SpinKitFoldingCube(color: Colors.amber),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SpinKitFadingFour(color: Colors.indigo),
                  SpinKitCircle(color: Colors.red),
                  SpinKitFadingFour(color: Colors.cyan, shape: BoxShape.rectangle),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SpinKitPumpingHeart(color: Colors.red),
                  SpinKitPulse(color: Colors.deepPurple),
                  SpinKitDoubleBounce(color: Colors.blue),
                ],
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}