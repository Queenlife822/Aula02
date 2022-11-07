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
        
        primarySwatch: Colors.blueGrey,
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
      
      body: Center(
        child:Padding(
          padding:const EdgeInsets.all(48.0) ,
          child: Column (
            mainAxisAlignment:MainAxisAlignment.center,
            children : <Widget>[
              const Icon(Icons.account_circle,             
              size:200.50,
              color:Colors.black,),
              const SizedBox(
                height:100 ,),
              TextFormField ( 
                decoration :const InputDecoration(
                  prefixIcon:Icon(Icons.person),
                  hintText: "Usuário",
                ),
              ), 
              const SizedBox(
                height: 40,
              ),
                TextFormField(obscureText: true,
                  decoration:const InputDecoration( 
                    prefixIcon:Icon(Icons.key),
                    suffixIcon:const Icon(Icons.visibility) ,
                    hintText:"Senha",
                  ),
                  
                ),const SizedBox(height: 80.0 ,
                width:0.0 ,
                ),
               
                ElevatedButton(
                   // ignore: prefer_const_constructors
                   style: ButtonStyle(
                   backgroundColor: const MaterialStatePropertyAll<Color>(Colors.black),
                   ),
                onPressed:(){}, child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 250,vertical:30 ),
                  child: Text("Login".toUpperCase(),style:const TextStyle(fontSize:25,
                  fontWeight:FontWeight.bold)
                  ),
                )
                ),
              
            ],
          ),
        ),
        ),
         
      
    );
  }
}



