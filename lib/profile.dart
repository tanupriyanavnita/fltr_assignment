import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    _getText(String no,String str){
      return Padding(
        padding: EdgeInsets.only(top: 64.0,left: 14.0),
        child: Column(
          children: <Widget>[
            Text(no,style:
              TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
            Text(str,style:
            TextStyle(fontSize: 15.0,color: Colors.white,fontWeight: FontWeight.bold),),
          ],
        ),
      );
    }
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                  Column(
                  children: <Widget>[
                  Image(
                  image: AssetImage('assets/logo2.jpg'),
                  height: 180.0,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height:380.0 ,
                    decoration: new BoxDecoration(
                        gradient: LinearGradient(
                          begin:Alignment.topLeft,
                          end:Alignment.bottomRight,
                          colors: [const Color(0xffff7043),const Color(0xffff4081)],
                          tileMode: TileMode.repeated,
                        )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            _getText("12","Posts"),
                            _getText("23","Followers"),
                            _getText("56","Following"),

                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 55.0,left: 30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Scott Colon",style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,color: Colors.white
                              ),),
                              Text("Photographer",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,color: Colors.white
                              ),),

                              Padding(
                                padding: EdgeInsets.only(top: 40.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    RichText(
                                      text: new TextSpan(
                                        style: new TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white,
                                        ),
                                        text: "Lorem Ipsum is simply dummy text of\n"
                                            "the printing and typesetting industry.\n"
                                          "Lorem Ipsum has been the industry's\n"
                                            "standard dummy text ever since the\n"
                                          "1500s, when an unknown printer took a\n"
                                            "galley of type and scrambled it to make\n "
                                          "a type specimen book. It has survived\n"
                                          "not only five centuries, but also the leap\n"
                                            "into elecronic typesetting,remaining\n"
                                            "essentially unchanged. "
                                      ),
                                    ),
                                  ],

                                ),
                              ),
                            ],

                          ),
                        ),



                      ],
                    )
                )
                ],
              ),
                Padding(
                  padding: new EdgeInsets.only(top: 150.0,left: 63.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FloatingActionButton(
                        onPressed: (){},
                        child: Icon(Icons.add,size: 30.0,),
                        backgroundColor: Colors.red,





                      )
                    ],

                  ),
                ),
              ],
            ),
          ],
        ),
      ),


    );
  }

}
//MediaQuery.of(context).size.height * 0.5936