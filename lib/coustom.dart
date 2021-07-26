import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:math';
class CoustomProgressIndicator extends StatefulWidget {

  @override
  _CoustomProgressIndicatorState createState() => _CoustomProgressIndicatorState();
}

class _CoustomProgressIndicatorState extends State<CoustomProgressIndicator> {
  Color _color = Color((Random().nextDouble()*0xffffff).toInt()<<0).withOpacity(1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height:32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GFLoader(
                    type: GFLoaderType.custom,
                    loaderIconOne: Icon(Icons.insert_emoticon, color: _color,),
                    loaderIconTwo: Icon(Icons.insert_emoticon, color: Colors.blue,),
                    loaderIconThree: Icon(Icons.insert_emoticon, color: Colors.green,),
                  ),
                  GFLoader(
                    type: GFLoaderType.custom,
                    loaderIconOne: Icon(Icons.insert_emoticon, color: Colors.blue,
                    size: 56,),
                    loaderIconTwo: Icon(Icons.insert_emoticon, color: Colors.green,
                    size: 56,),
                    loaderIconThree: Icon(Icons.insert_emoticon, color: _color,size: 56,),
                  ),
                ],
              )
            ],
          ),
        ),
      ),),
    );
  }
}
