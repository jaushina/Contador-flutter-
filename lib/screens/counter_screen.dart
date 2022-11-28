
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key?key}):super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
   int counter =0;

  // variable, propiedad.
  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('BIENVENIDO A MI CORAZÓN❤'),
        elevation: 0,
        centerTitle:true,
        
        
      ),
      backgroundColor: Colors.lightBlue[100],
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('El amor que te tengo',style: fontSize30),
              Text('$counter',style: fontSize30),
            ]
          )
        ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //button de --
              FloatingActionButton(
              child: const Icon(Icons.favorite_border),
              onPressed: ()=> setState(() => counter--),
              ),
              const SizedBox(width: 70,),
             
              //button de reset
              FloatingActionButton(
              child: const Icon(Icons.restart_alt),
              onPressed: ()=> setState(() => counter=0),
              ),
              // este comando nos sirve para agregar una distanca a cierto objeto.
              const SizedBox(width: 70,),


              //button de ++
            FloatingActionButton(
              child: const Icon(Icons.favorite),
              onPressed: ()=> setState(() => counter++),
              ),

          ],
        ),
    );

  }
}