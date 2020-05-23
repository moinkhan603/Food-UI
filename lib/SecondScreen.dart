import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile')
          )
        ],
      ),
    
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(children: <Widget>[

Container(color: Color(0xffcff3f3),
height: 280,
)
,



              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: SingleChildScrollView(
                  child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/avatar.png"),
                          backgroundColor: Colors.blue,
                        )
,

                        SizedBox(width: 8,),
                        Text("How Hungary Are You Today ?",style: GoogleFonts.roboto(
                          textStyle: TextStyle(fontSize: 20 ),

                        ),)
                      ],),



                      Card(
                        margin: EdgeInsets.only(left: 30, right:30, top:30),
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: TextField(
                          onChanged: (value){
                            print(value);

                          },
                          decoration: InputDecoration(
                       prefixIcon: Icon(Icons.search, color: Colors.black26,),

                              hintText: "Search Food Items",
                              hintStyle: TextStyle(color: Colors.black),
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(

                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              ),
                              contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 200,

                        child: ListView(
                          padding: EdgeInsets.all(10),
                  scrollDirection: Axis.horizontal,
                        children: <Widget>[

                          buildCard("assets/images/salad.png","Salad"),
                          buildCard("assets/images/pizza.png","Pizza"),
                          buildCard("assets/images/shake.png","Shake"),

                        ],
                        ),
                      ),

Padding(
  padding: const EdgeInsets.only(left:12.0,right: 12),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[

    Text("Popular Foods",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        Text("View All",style: TextStyle(color: Colors.blue,fontSize: 18),)
  ],),
),
                      Container(
                        height: 250,
                     
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.all(10),
                    children: <Widget>[

                        platterCard("assets/images/PLate1.png","Sea Platter"),
                        platterCard("assets/images/PLate2.png","Sea Platter"),
                        platterCard("assets/images/PLate3.png","Sea Platter"),
                        platterCard("assets/images/PLate4.png","Sea Platter"),
                        platterCard("assets/images/Plate5.png","Sea Platter"),
                        platterCard("assets/images/PLate6.png","Sea Platter"),

                    ],
                        ),
                      )





                    ],
                  ),
                ),
              ),



            ],),










    ],





        ),
      ),


    );
  }

  Card platterCard(String img , String text) {
    return Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                    child: Container(
                    //  padding: EdgeInsets.all(10),
                    height: 230,
                    width: 180,
                    child: Column(


                      children: <Widget>[

                      Image.asset(img
                      ,width: 100,height: 100,),
                        SizedBox(height: 12,),

                        Text(text,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Row(

                            children: <Widget>[
                            Icon(Icons.location_on,color: Colors.orange,),
                            Text("Sans fransisco")

                          ],),
                        ),
  Row(
  mainAxisSize: MainAxisSize.min,
  children: List.generate(5, (index) {
  return Icon(
  index <3 ? Icons.star : Icons.star_border,color: Colors.orange,
  );
  }),
  ),
                        SizedBox(height: 5,),
                        Text("RS 20"),
               ],),
                  ),);
  }

  Card buildCard(String img, String text) {
    return Card(
margin: EdgeInsets.all(10),
                    elevation: 10,
                    color: Colors.white,

                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[


                            Image.asset(img
                            ,width: 80,
                              height: 80,
                            ),
                            Text(text),
                          ],),
                        ),

                      ),
                    ),


                  );
  }
}
