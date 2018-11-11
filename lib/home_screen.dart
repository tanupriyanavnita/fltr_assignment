import 'package:flutter/material.dart';
import 'package:fltr_assignment/profile.dart';

class HomeScreen extends StatefulWidget{
  @override
  HomeScreenState createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
      width:  MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            begin:Alignment.topLeft,
            end:Alignment.bottomRight,
            colors: [const Color(0xffff7043),const Color(0xffff4081)],
          tileMode: TileMode.repeated,
        )
      ),

      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: ListView(
          children: <Widget>[
           Column(

              mainAxisSize: MainAxisSize.max,

              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[

                Image(

                  image: AssetImage('assets/logo.jpg'),

                  height: 200.0,

                ),

                SizedBox(height:20.0),



                Container(

                  width: MediaQuery.of(context).size.width,

                  height:340.0 ,

                  child: Stack(



                    alignment:Alignment.topCenter ,

                    children:<Widget>[

                      Container(

                      height: 160.0,

                      decoration: new BoxDecoration(

                        borderRadius: BorderRadius.circular(14.0),

                        color: Colors.white,

                      ),

                      child: Padding(

                        padding: const EdgeInsets.all(8.0),

                        child: Column(

                          children: <Widget>[

                            Row(

                              children: <Widget>[

                                Icon(Icons.mail_outline),



                                  Expanded(

                                    child: TextField(

                                      decoration: InputDecoration(

                                      labelText:'Enter a Username',

                                      contentPadding:EdgeInsets.symmetric(

                                        horizontal: 30.0,

                                        vertical: 10.0,

                                      )

                                    ),

                                  )



                                  )

                              ],

                            ),

                            Row(

                              children: <Widget>[

                                Icon(Icons.lock),



                                Expanded(

                                    child: TextField(

                                      decoration: InputDecoration(

                                          labelText:'Password',

                                          contentPadding:EdgeInsets.symmetric(

                                            horizontal: 30.0,

                                            vertical: 10.0,

                                          )

                                      ),

                                    )



                                ),

                                Icon(Icons.visibility),

                              ],

                            ),





                          ],



                        ),

                      ),

                    ),

                      Positioned(

                        top: 138.0,//MediaQuery.of(context).size.width*0.4,

                        child: GestureDetector(

                         onTap:() {

                           Navigator.of(context).push(MaterialPageRoute(

                               builder: (context) => Profile()));

                         },

                          child: Container(





                            width:  MediaQuery.of(context).size.width*0.5,

                            height: 50.0,//MediaQuery.of(context).size.height*0.07,



                            decoration: new BoxDecoration(

                              borderRadius: BorderRadius.circular(5.0),

                                gradient: new LinearGradient(

                                  begin:Alignment.topLeft,

                                  end: Alignment.bottomRight,

                                  colors: [const Color(0xffff4081),const Color(0xffff7043)],

                                  tileMode: TileMode.repeated,

                                )

                            ),



                            child: Column(

                              mainAxisAlignment: MainAxisAlignment.center,

                              children: <Widget>[

                                Text("LOGIN",style: TextStyle(

                                  color: Colors.white,

                                  fontSize: 24.0,

                                  fontWeight: FontWeight.bold



                                ),),

                              ],

                            ),



                          ),

                        ),

                      )

                  ]

                  ),

                ),





              ],

            ),
],
        ),
      ),
      ),






    );
  }
}
//MediaQuery.of(context).size.height*0.4