
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key?key}):super(key: key);

  // variable, propiedad.

 
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle( fontSize: 21);
    int counter =0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Para el amor de mi Vida'),
        elevation: 0,
        centerTitle:true,
        //backgroundColor: Color(Colors.green.blue),
      ),
      backgroundColor: Colors.amber[200],
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
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          
          onPressed: () {
            print('hola mundo: $counter');
            counter++;
          },
          ),
    );

  }

}