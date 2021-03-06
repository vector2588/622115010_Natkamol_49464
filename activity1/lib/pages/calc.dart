import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({ Key? key }) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  TextEditingController quantity = TextEditingController();
  TextEditingController result = TextEditingController();
  TextEditingController price = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result.text = "Buy x apples. Because each apples cost 10 THB, You have to pay 500,000 THB";
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(children: [
              Image.asset("assets/555.jpg"),
              SizedBox(height: 20,),
              Text("Calculator Program",style: TextStyle(
                      fontFamily: "Maa",
                      fontSize: 70, 
                      fontStyle: FontStyle.italic, 
                       fontWeight: FontWeight.bold)),
              TextField(
                controller: quantity,
                decoration: InputDecoration(
                  labelText: "Apple Amount", border: OutlineInputBorder()),
              ),
              TextField(
                controller: price,
                decoration: InputDecoration(
                  labelText: "Apple price", border: OutlineInputBorder()),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {
                  var cal = double.parse(quantity.text)*double.parse(price.text);
                  print("Bearbrick quality: ${quantity.text} Total: ${cal} BTH");
                  setState(() {
                    result.text = "Buy ${quantity.text} apples. Because each apples cost ${price.text} THB, You have to pay ${cal} THB";

                  });
                }, 
                child: Text("Calculate"),
                style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffAFCBFF)),
                  padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(10, 30, 50, 70)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontFamily: "Maa", fontSize: 20))
                )),
              SizedBox(height: 20,),
              Text(result.text)
            ],),
          ),
        ),
      ],
    );
  }
}