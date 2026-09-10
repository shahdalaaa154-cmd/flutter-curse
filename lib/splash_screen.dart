import 'package:flutter/material.dart';
import 'package:mi_card/main.dart';

class SplashScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3),(){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context)=> const MyApp(),)
            
          );

    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("data")) ,);
  }
}