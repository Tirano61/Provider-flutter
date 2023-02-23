


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_provider/heroes_info.dart';

class SuperText extends StatelessWidget {
  const SuperText({super.key});

  @override
  Widget build(BuildContext context) {

    final heroe = Provider.of<HeroesInfo>(context);

    return Container(
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(
            builder: ((context, value, _) {
              return Text(heroe.getDatos, style: const TextStyle(fontSize: 20 ,color: Color.fromRGBO(255, 57, 57, 0.7)),);
               } 
            ) 
          ),

          const SizedBox(height: 20),

          TextField(
            decoration: const InputDecoration(
              hintText: 'Lote',
              label: Text('Lote'),
              border: OutlineInputBorder(
              
                borderSide: BorderSide(color: Colors.black45, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )
            ),
            onChanged: (value) {
              heroe.setLote(value); 
            }
          ),
          
          const SizedBox(height: 20),

          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Caravana',
              label: Text('Caravana'),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black45, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )
            ),
            onChanged: (value) {
              heroe.setcaravana(value);
            },
          ),

        ] 
      ),
    );
  }
}