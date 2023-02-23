



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_provider/pages/home_page.dart';
import 'package:prueba_provider/heroes_info.dart';

void main(){
  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((_) => HeroesInfo() ))
      ],
      child: const MyApp()
    )
  );  
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home':(context) => const HomePage(),
      },
    );
  }
}