

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_provider/heroes_info.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({super.key});

  @override
  Widget build(BuildContext context) {
    
    final heroe = Provider.of<HeroesInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: (() {
            
          }),
          child:  const Icon(Icons.access_alarm)
        ),
        const SizedBox(height: 20),
        FloatingActionButton(
          onPressed: (() {
            heroe.setDatos('${heroe.getCaravana} - ${heroe.getLote}');
          }),
          child: const Icon(Icons.accessibility_rounded),
        ),
      ],
    );
  }
}