import 'dart:ui';

import 'package:aula02/widget/eleveted_button_custom.dart';
import 'package:aula02/widget/text_form_field_custom.dart';
import 'package:flutter/material.dart';

enum StringCharacter { feminino, masculino }

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.title});

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool obscureText = true;
  StringCharacter? kauane = StringCharacter.feminino;

  @override
  Widget build(BuildContext context) {
    print("BUILD ENTREI");
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text("Faça login para continuar"),
              SizedBox(
                height: 15,
              ),
              TextFormFieldCustom(
                description: 'Nome',
                prefixIcon: const Icon(Icons.person, color: Colors.black),
              ),
              const SizedBox(height: 25),
              TextFormFieldCustom(
                description: 'E-mail',
                prefixIcon: const Icon(Icons.email, color: Colors.black),
              ),
              const Divider(),
              const Text(
                'Gênero',
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: RadioListTile(
                        value: StringCharacter.feminino,
                        title: Text("feminino"),
                        groupValue: kauane,
                        onChanged: (StringCharacter? coimbra) {
                          setState(() {
                            kauane = coimbra;
                          });
                        }),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: RadioListTile(
                        title: Text("masculino"),
                        value: StringCharacter.masculino,
                        groupValue: kauane,
                        onChanged: (StringCharacter? coimbra) {
                          setState(() {
                            kauane = coimbra;
                          });
                        }),
                  ),
                ],
              ),
              const Divider(),
              TextFormFieldCustom(
                description: 'Telefone',
                prefixIcon: const Icon(Icons.call, color: Colors.black),
              ),
              SizedBox(height:20,),
              TextFormFieldCustom(
                description: 'Data Nascimento',
                prefixIcon: const Icon(Icons.calendar_today, color: Colors.black),
              ),SizedBox(height:20,),
              Row(children: [
                
                SizedBox(
                  width: 250,
                  child: TextFormFieldCustom(
                  description: 'Cidade',
                  prefixIcon: const Icon(Icons.location_city, color:Colors.black ),
              ),),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 170,
                child: TextFormFieldCustom(
                  description: 'Estado',
                  prefixIcon: const Icon(null),
                ),
              ),
              

              ],),const Divider(),
              TextFormFieldCustom(
                obscureText: obscureText,
                description: 'Senha',
                prefixIcon: const Icon(Icons.key, color: Colors.black),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black),
                ),
              ),const SizedBox(
                height: 10,
              ),
              
              const SizedBox(
                height: 10,),
              TextFormFieldCustom(
                obscureText: obscureText,
                description: 'Repita senha',
                prefixIcon: const Icon(Icons.key, color: Colors.black),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(height: 10),
              const ElevetedButtonCustom(description: "Criar conta"),
              const SizedBox(
                height: 10,
              ),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.check_circle,color:Colors.blue),
                  RichText(
                  
                    textAlign: TextAlign.center,
                    
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize:16),
                      children: <TextSpan>[
                        
                        TextSpan(text: 'Estou  de acordo com os '),
                        TextSpan(
                          text: 'termos e obrigações',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ],
                    ),
                    textScaleFactor: 0.8,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
} //125
