import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Smiliguido'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar( 
        
        title: Text(widget.title),
        centerTitle:true ,
      ),
      body: Center(
        child:Padding(
          padding:const EdgeInsets.all(48.0) ,
          child: Column (
            mainAxisAlignment:MainAxisAlignment.center,
            children : <Widget>[
              TextFormField ( 
                decoration :const InputDecoration(
                  hintText: "Usuário",
                ),
              ), 
              const SizedBox(
                height: 40,
              ),
                TextFormField(
                  decoration:const InputDecoration(
                    hintText:"Senha"
                  )
                ),
              ],
            ),
          ),
         ),
        
        
       
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        tooltip: 'Increment',
        child: const Icon(Icons.add)
      )
    );
  }
}
