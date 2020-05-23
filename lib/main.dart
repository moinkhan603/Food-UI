import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SecondScreen.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI CHALLENGE',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {




  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text(

              "Get"+"\n"+ "The Fastest "+"\n"+"Delivery",style: GoogleFonts.hindMadurai(
          textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 40 ),

            ),

            ),

            SizedBox(height: 10,),
            Text("Order food and get"+"\n"+"Delivery in fastest time in Town",style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 20 ),

            ),),
            SizedBox(height: 10,),
          RaisedButton(
            textColor: Colors.white,
            color: Colors.orange,
            child: Text("Get Started",style: TextStyle(letterSpacing: 1),),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Second()),
              );

            },
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
          ),

Image.asset("assets/images/delievery.png")




          ],
        ),
      ),
    );
  }
}
