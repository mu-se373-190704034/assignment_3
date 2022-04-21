import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // implement createState
    return MyAppState();
  }
}

class MyAppState extends State<myApp>{
  var counter=0;
  var text="+";

  void clickedCounter(){
    setState(() {
      counter+=1;
      textMessage();
    });
  }
  void restartCounter(){
    setState(() {
      counter=0;
      textMessage();
    });
  }

  void textMessage(){
    setState(() {
      if(counter==0){

      }
      else{

      }
    });
  }
  Widget build(BuildContext context){
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            title: Text("Counter App"),

          ),
          body:Column(
            children:<Widget> [Container(alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(5, 10, 8, 10),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(primary: Colors.brown,
                    minimumSize: Size(30,1),
                    side: BorderSide(
                      width: 20.0,
                      color: Colors.brown,

                    ))
                ,child: Text("RESTART",
                style: TextStyle(fontSize: 20),
              ),
                onPressed: restartCounter,),

            ),
              Text("",
                style: TextStyle(fontSize: 25),),
              Padding(padding: EdgeInsets.all(50.0)),
              Container(alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(10, 200, 10, 10),
                child :ElevatedButton(
                  child: Text(text),
                  onPressed: clickedCounter,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      padding: const EdgeInsets.all(15),
                      textStyle: TextStyle(fontSize: 30),
                      alignment: Alignment.center

                  ),),

              ),
              Container(alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 0, 0,40),
                child:Text(counter.toString(),
                  style: TextStyle(fontSize: 30),),),
              Text(text,
                style: TextStyle(fontSize:20 ),)
            ],
          ),
        )
    );
  }
}
