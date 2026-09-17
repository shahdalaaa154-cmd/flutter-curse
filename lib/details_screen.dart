import 'package:flutter/material.dart';
import 'package:mi_card/main.dart';

class DetailsScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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