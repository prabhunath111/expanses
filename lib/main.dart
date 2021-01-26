import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
  debugShowCheckedModeBanner: false,
));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fitness Forever",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      drawer: getDrawer(),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              upcomingEvent(),
              activeEvent(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: null),
            IconButton(icon: Icon(Icons.videocam), onPressed: null),
            IconButton(icon: Icon(Icons.add), onPressed: null),
            IconButton(icon: Icon(Icons.videocam), onPressed: null),
            IconButton(icon: Icon(Icons.person), onPressed: null),
          ],
        ),
      ),
    );
  }

  Widget upcomingEvent() {
    return Column(
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.0),
            color: Colors.grey,
            child:
            Text("Upcoming Events", style: TextStyle(color: Colors.black))),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNlNwuuHG-4vpHfWyjDehYs31XudfbJerfyw&usqp=CAU",fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: MediaQuery.of(context).size.height * 0.2,
                              )),
                          Text("15th Nov to 30th Nov 2020"),
                          Text("10K Marathon Challange"),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: FlatButton(
                              child: Text('Register Now', style: TextStyle(color: Colors.white),),
                              onPressed: null,
                            ),
                          ),
                        ]
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network("https://static.independent.co.uk/s3fs-public/thumbnails/image/2020/03/11/12/best-mens-running-shoes-2020-indybest.jpg",fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width *0.6,
                                  height: MediaQuery.of(context).size.height * 0.2,)),
                            Text("15th Nov to 30th Nov 2020"),
                            Text("10K Marathon Challange"),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FlatButton(
                                child: Text('Register Now', style: TextStyle(color: Colors.white),),
                                onPressed: null,
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),

                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget activeEvent() {
    return Column(
      children: <Widget>[
        Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.0),
            child:
            Text("Active Events", style: TextStyle(color: Colors.grey))),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[

                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network("https://content.active.com/Assets/Active.com+Content+Site+Digital+Assets/Fitness/Galleries/10+Fitness+Tips/Muscle-confusion-is-the-only-way-to-go..jpg",fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: MediaQuery.of(context).size.height * 0.2,
                              )),
                          Text("15th Nov to 30th Nov 2020"),
                          Text("10K Marathon Challange"),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: FlatButton(
                              child: Text('Register Now', style: TextStyle(color: Colors.white),),
                              onPressed: null,
                            ),
                          ),
                        ]
                    ),
                  ),

                ],
              ),
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                          children: <Widget>[
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network("https://media2.s-nbcnews.com/j/newscms/2017_36/2144546/170905-working-out-group-ac-512p_2b5db137b66bedb7f1d96c24b8ca1b8a.nbcnews-fp-1200-630.jpg",fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width *0.6,
                                  height: MediaQuery.of(context).size.height * 0.2,)),
                            Text("15th Nov to 30th Nov 2020"),
                            Text("10K Marathon Challange"),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FlatButton(
                                child: Text('Register Now', style: TextStyle(color: Colors.white),),
                                onPressed: null,
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget getDrawer() {
    return Drawer(  );
  }
}
