import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StarterUiKitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: MediaQuery.of(context).size.height/2,
            child: Container(
              color: Colors.black,
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(16),
                    height: MediaQuery.of(context).size.height / 3.5,

                    child: Column(
                      
                      children: <Widget>[
                        Text("Rosalia's Top Songs", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),),
                        Row(
                          children: <Widget>[
                            Icon(Icons.arrow_drop_up, color: Colors.green,),
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                color: Colors.red,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Auto Cuture", style: TextStyle(
                                color: Colors.white,
                              ),),
                            ),
                            Spacer(),
                            CircleAvatar(radius: 18,
                            backgroundColor: Colors.grey[500],
                            child: Icon(Icons.more_vert),),
                          ],
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.9,
              decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: NetworkImage("https://cdn.pixabay.com/photo/2016/09/10/11/11/musician-1658887_960_720.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.keyboard_arrow_left,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            height: 38,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "FOLLOWING",
                                    style: TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white)),
                            child: Center(
                              child: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text("Rosalia",style: TextStyle(
                      fontSize: 48,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text("16k Followers", style: TextStyle(
                      color: Colors.white,
                    ),),
                    SizedBox(height: 24,),
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(Icons.play_arrow),
                      ),
                    ),
                    SizedBox(height: 24,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


















