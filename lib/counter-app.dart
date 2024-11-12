import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {

  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
   int number = 0;


    incrementCounter(){
     setState(() {
       number++;
     });
   }

    decrementCounter(){
     setState(() {
       number-- ;
     });
   }
   void refreshCounter()
   {
     setState(() {
       number=0;
     });
   }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text('Counter App',style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
      ),


      body: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
                      children: [
                        Positioned(
                          bottom: 500,
                           child:
                             Text( 'Count = $number',
                              style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.cyan),
                            ),
                          ),
                          Positioned(
                            bottom: 400,

                          child:
                          Container(
                          margin: EdgeInsets.only(top: 20,bottom: 20),
                          height: 50,
                          width: 130,
                          color: Colors.cyan,
                          child: FloatingActionButton(onPressed:
                          incrementCounter,
                            child: Icon(Icons.add),
                          ),
                        ),),
                        Positioned(
                          bottom: 300,
                          child:
                          Container(
                          margin: EdgeInsets.only(top: 20,bottom: 20),
                          height: 50,
                          width: 130,
                          color: Colors.cyan,
                          child: FloatingActionButton(
                            onPressed: decrementCounter ,
                            child: Icon(Icons.minimize_sharp),
                          ),
                        ),),

                        Positioned(
                          bottom: 200,
                          child:
                          Container(
                          margin: EdgeInsets.only(top: 20,bottom: 20),
                          height: 50,
                          width: 130,
                          color: Colors.cyan,
                          child: FloatingActionButton(
                            onPressed: refreshCounter ,
                            child: Icon(Icons.refresh),
                          ),
                        ),),


                      ], ),
        ),
      );
  }
}


