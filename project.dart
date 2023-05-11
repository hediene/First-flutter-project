# First-flutter-project
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:percent_indicator/percent_indicator.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hello',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Home", style: TextStyle(
              color: Colors.blueGrey[600],
              fontWeight: FontWeight.w700
          ),
          ),


          leading: Icon(
            Icons.menu_outlined,
            color: Colors.blueGrey[600],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 19),
              child: Icon(
                Icons.local_grocery_store_outlined,

                color: Colors.blueGrey[600],
              ),
            ),
              Padding(
                 padding: const EdgeInsets.only(right: 10),
                child:CircleAvatar( backgroundImage: AssetImage('assets/profile.png'))

              ),
          ],),

        body:
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.tune_outlined),


                  ),
                ),
              ),
            ),

            Container(
              child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      height: 190,
                      width: 600,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10.0),
                            topLeft: Radius.circular(10.0)),
                        image: DecorationImage(
                            image: AssetImage('assets/jacket.PNG'),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),

                    Positioned(
                      top: 30,
                      right: 45,
                      child: Container(
                          height: 100,
                          width: 150,
                          color: Colors.transparent,
                          child: const Text(
                              "A room without books is like a body without a ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.cyan,
                              )
                          )
                      ),
                    ),
                    Positioned(
                      bottom: 48,
                      right: 65,
                      child: FloatingActionButton.extended(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      label: const Text('Collection', style: TextStyle(fontSize: 18,),

                      ),

                      backgroundColor: Colors.cyan,
                    ),),




                  ]

              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Icon(
                      Icons.campaign_outlined, color: Colors.blueGrey[700]),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Flash Sales",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.blueGrey[600],
                      ),
                    ),
                  ),
                ),
              ],
            ),


            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.0),
                          height: 250,
                          width: 200,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius
                                .circular(10.0), topLeft: Radius.circular(
                                10.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/dressone.jpg'),
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            height: 190,
                            width: 200,

                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 9,
                          child: Container(
                            height: 90,
                            color: Colors.white,

                            child: Padding(padding: EdgeInsets.only(left: 10.0),
                              child: Text(

                                "Maxi Dress  ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blueGrey[600],
                                ),
                              ),
                            ),
                          ),

                        ),
                        Positioned(

                          bottom: 0,
                          right: 0,
                          left: 9,
                          child: Padding(padding: EdgeInsets.only(bottom: 48.0),
                            child:
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "130 Sales",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blueGrey[600],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 50.0),
                                    child: Icon(Icons.star,
                                        color: Colors.yellow),
                                  ),
                                  Container(
                                      child: Text("4.3",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blueGrey[600],
                                        ),
                                      )
                                  )

                                ]),),

                        ),
                        Positioned(

                          bottom: 0,
                          right: 0,
                          left: 9,
                          child: Padding(padding: EdgeInsets.only(bottom: 30.0),
                            child:
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "25 Available",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey[600],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(

                          bottom: 22,
                          right: 25,

                          child: LinearPercentIndicator(
                            width: 170.0,
                            lineHeight: 5.0,
                            percent: 0.5,
                            backgroundColor: Colors.grey,
                            progressColor: Colors.lightBlueAccent,
                          ),
                        ),

                        Positioned(
                          top: 15,
                          right: 15,
                          child: Container(
                            height: 28,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text(
                                  "12.1% ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  )
                              ),),
                          ),
                        ),

                      ]
                  ),
                  Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.0),
                          height: 250,
                          width: 200,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius
                                .circular(10.0), topLeft: Radius.circular(
                                10.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/dressa.PNG'),
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            height: 190,
                            width: 200,

                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 9,
                          child: Container(
                            height: 90,
                            color: Colors.white,

                            child: Padding(padding: EdgeInsets.only(left: 10.0),
                              child: Text(

                                "Black Checke ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blueGrey[600],
                                ),
                              ),
                            ),
                          ),

                        ),
                        Positioned(

                          bottom: 0,
                          right: 0,
                          left: 9,
                          child: Padding(padding: EdgeInsets.only(bottom: 48.0),
                            child:
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "63 Sales",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blueGrey[600],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 50.0),
                                    child: Icon(Icons.star,
                                        color: Colors.yellow),
                                  ),
                                  Container(
                                      child: Text("5.0",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blueGrey[600],
                                        ),
                                      )
                                  )

                                ]),),

                        ),
                        Positioned(

                          bottom: 0,
                          right: 0,
                          left: 9,
                          child: Padding(padding: EdgeInsets.only(bottom: 30.0),
                            child:
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "60 Available",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey[600],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 15,
                          right: 15,
                          child: Container(
                            height: 28,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text(
                                  "20.2% ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  )
                              ),),
                          ),
                        ),
                        Positioned(

                          bottom: 22,
                          right: 25,

                          child: LinearPercentIndicator(
                            width: 170.0,
                            lineHeight: 5.0,
                            percent: 0.6,
                            backgroundColor: Colors.grey,
                            progressColor: Colors.greenAccent,
                          ),
                        ),

                      ]
                  ),
                  Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10.0),
                          height: 250,
                          width: 200,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius
                                .circular(10.0), topLeft: Radius.circular(
                                10.0)),
                            image: DecorationImage(
                                image: AssetImage('assets/dressone.jpg'),
                                fit: BoxFit.cover
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          child: Container(
                            margin: EdgeInsets.all(10.0),
                            height: 190,
                            width: 200,

                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 9,
                          child: Container(
                            height: 90,
                            color: Colors.white,

                            child: Padding(padding: EdgeInsets.only(left: 10.0),
                              child: Text(

                                "Maxi Dress  ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blueGrey[600],
                                ),
                              ),
                            ),
                          ),

                        ),
                        Positioned(

                          bottom: 0,
                          right: 0,
                          left: 9,
                          child: Padding(padding: EdgeInsets.only(bottom: 48.0),
                            child:
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "130 Sales",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blueGrey[600],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 50.0),
                                    child: Icon(Icons.star,
                                        color: Colors.yellow),
                                  ),
                                  Container(
                                      child: Text("4.3",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.blueGrey[600],
                                        ),
                                      )
                                  )

                                ]),),

                        ),
                        Positioned(

                          bottom: 0,
                          right: 0,
                          left: 9,
                          child: Padding(padding: EdgeInsets.only(bottom: 30.0),
                            child:
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "25 Available",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey[600],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(

                          bottom: 22,
                          right: 25,

                          child: LinearPercentIndicator(
                            width: 170.0,
                            lineHeight: 5.0,
                            percent: 0.25,
                            backgroundColor: Colors.grey,
                            progressColor: Colors.blue,
                          ),
                        ),
                        Positioned(
                          top: 15,
                          right: 15,
                          child: Container(
                            height: 28,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text(
                                  "12.1% ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  )
                              ),),
                          ),
                        ),

                      ]
                  ),


                ],
              ),
            ),
            Container(

              child: BottomNavigationBar(

                type: BottomNavigationBarType.fixed,
                currentIndex: 2,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.notifications_none,
                      color: Colors.cyan),
                      backgroundColor: Colors.white,
                      label: "Notifications"),

                  BottomNavigationBarItem(icon: Icon(Icons.person_outlined,
                      color: Colors.cyan),
                      backgroundColor: Colors.white,
                      label: "user"),


                  BottomNavigationBarItem(icon: Icon(Icons.home_outlined,
                      color: Colors.cyan),
                      backgroundColor: Colors.white,
                      label: "home"),

                  BottomNavigationBarItem(icon: Icon(Icons.message_outlined,
                      color: Colors.cyan),
                      backgroundColor: Colors.white,
                      label: "messages"),


                  BottomNavigationBarItem(icon: Icon(Icons.favorite_outline,
                      color: Colors.cyan),
                      backgroundColor: Colors.white,
                      label: "favorite"),
                ],

              ),
            ),
          ],

        ),

      ),
    );
  }


}



