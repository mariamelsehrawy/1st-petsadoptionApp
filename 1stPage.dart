import 'package:flutter/material.dart';
import 'package:flutter_app1/main.dart';


void main() => runApp((FirstPage()));

class FirstPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            height: 90,
            width: 400,
            margin: EdgeInsets.only(left: 20, top: 150, bottom: 200, right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: Text(
              'Why\'re you here?',
              style: TextStyle(fontSize: 40),
            ),
            padding: EdgeInsets.only(left: 40, right: 20, top: 20),
          ),



          SizedBox(height: 50),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[ Center( child:
              Container(
                margin: EdgeInsets.only(left:20, right: 180,top: 5, bottom: 30),
                child: RaisedButton ( onPressed: () { Navigator.pushNamed(context, '/home');

                },
                  shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular( 70),
                  ),
                  padding: EdgeInsets.all(0),
                  child: Ink(  decoration: BoxDecoration ( borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient( begin: Alignment.centerLeft,end: Alignment.centerRight,
                          colors: <Color>[Colors.white, Colors.amber])),
                      child: Container( constraints:
                      BoxConstraints(maxWidth: 170 , maxHeight: 60, minHeight: 50 ),
                          alignment: Alignment.center,
                          child: Text('Adopt a Pet',
                            textAlign: TextAlign.center,
                            style: TextStyle( color: Colors.black , fontSize: 20) ,)

                      )
                  ),

                ),
              ),

              )
              ]

          ),
          SizedBox(height: 50),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[ Center( child:
                  Container(
                    margin: EdgeInsets.only(left:230, right: 10,top: 5, bottom: 30),
                   child: RaisedButton ( onPressed: null ,
                    shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular( 70),
                    ),
                       padding: EdgeInsets.all(0),
                       child: Ink(  decoration: BoxDecoration ( borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient( begin: Alignment.centerLeft,end: Alignment.centerRight,
                            colors: <Color>[Colors.white, Colors.amber])),
                         child: Container( constraints:
                         BoxConstraints(maxWidth: 170 , maxHeight: 60, minHeight: 50 ),
                             alignment: Alignment.center,
                           child: Text('Rehome a Pet',
                             textAlign: TextAlign.center,
                           style: TextStyle( color: Colors.black , fontSize: 20) ,)


                         )
                         ),

                         ),
                    ),

                    )
    ]

               ),
        ]
      )

      )


    );
  }
}
