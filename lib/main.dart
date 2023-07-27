import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_overview/screens/home_screen.dart';


void main(){
  ///  ProviderScope store all the provider
  ///  In Riverpod we don't need to create seperate scope like we use  in provider
  runApp(ProviderScope(
    child: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
