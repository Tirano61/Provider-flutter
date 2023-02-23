


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_provider/heroes_info.dart';
import 'package:prueba_provider/widget/super_floating_action.dart';
import 'package:prueba_provider/widget/super_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  

  @override
  Widget build(BuildContext context) {
    final heroe = Provider.of<HeroesInfo>(context);

    return  Scaffold(
      appBar: AppBar(
        title: Text(heroe.getLote, style: const TextStyle(fontSize: 20),),
      ),
      body: const Center(
        child: SuperText(),
      ),
      floatingActionButton: const SuperFloatingAction(),
    );
  }
}