import 'package:flutter/material.dart';
import 'package:second_app/pages/details.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Knowledge"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            MyBox(
              "What is a computer?",
              "Computer is a things to calculate and fo any other works",
              "https://cdn.pixabay.com/photo/2017/08/30/17/12/waffle-hearts-2697904_960_720.jpg"),
            SizedBox(height: 20,),
            MyBox(
              "What is a Flutter?",
              "Flutter is a tool to create a mobile app",
              "https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg"),
            SizedBox(height: 20,),
            MyBox(
              "What is a Dart?",
              "Dart is a the language used in flutter",
              "https://cdn.pixabay.com/photo/2016/09/15/19/24/salad-1672505_960_720.jpg"),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String imageURL) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(imageURL),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
          )
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(
          title,
          style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20,),
        Text(
          subtitle,
          style: TextStyle(fontSize: 15,color: Colors.white,),
        ),
        SizedBox(height: 15,),
        TextButton(
          onPressed: () {
            print("Next page >>");
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage()));
          }, 
          child: Text("read more")
        )
      ],)
    );
  }
}