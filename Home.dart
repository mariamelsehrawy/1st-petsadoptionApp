import 'package:flutter/material.dart';

import 'package:flutter_app1/1stPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//color of background & its details
      backgroundColor: Colors.orangeAccent,
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10.0, top: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, '/firstpage');
                },
              ),
              Container(
                width: 120.0,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.filter_list, color: Colors.white),
                      onPressed: null,
                    ),
                    Container(
                      width: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: null,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 5.0),
        Padding(
          padding: EdgeInsets.only(left: 45, top: 2, bottom: 10),
          child: Row(
            children: <Widget>[
              Text(
                'Pets ',
                style: TextStyle(
                    fontFamily: 'Lora',
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                    color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                'Adoption',
                style: TextStyle(
                    fontFamily: 'Oswald',
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w100),
              ),
            ],
          ),
        ),

// container whom built on the wall paper

        SizedBox(height: 70.0),
        Container(
          height: MediaQuery.of(context).size.height - 100.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0), topRight: Radius.circular(60)),
          ),
          child: ListView(
            primary: false,
            padding: EdgeInsets.only(left: 25.0, right: 20.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 45.0),
                child: Container(
                  height: MediaQuery.of(context).size.height - 100,
                  child: ListView(
                    children: <Widget>[
                      Text(
                        'Facts about dogs',
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                                topLeft: Radius.circular(25),
                                topRight: Radius.circular(25)),

                          ),
                          child: Image(
                              image: AssetImage(
                                  'assets/images/dog-curled-up-resized.jpg'),
                              alignment: Alignment.topRight)
                      ),
                       Text( ' "Have you ever wondered'
                           'why your dog curls up in '
                           'a ball when they sleep? It’s actually an age-old instinct to'
                           ' keep themselves warm and to protect vital organs while they sleep" ', style:
                       TextStyle( fontSize: 20, fontFamily: 'Lora',
                         color:  Colors.black
                       ),)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
