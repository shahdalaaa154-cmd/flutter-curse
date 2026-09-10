import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ProfileCard(),
    ),
  );
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.teal,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),

          child: Column(
            children: [
              const SizedBox(height: 100),
              const CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage('assets/images/sh.jpg',),
              ),
              const SizedBox(height: 20),
              const Text('Shahd Alaa', style: TextStyle( 
                fontFamily: 'Pacifico',
                fontSize: 26,
              color: Colors.white,
              ) ,
              ),

              const SizedBox(height: 8),  
              const Text('STUDENT',
              style: TextStyle(
              color: Colors.white70,
              letterSpacing: 2,
               fontSize: 16,
              ),
              ),
              const SizedBox(height: 25),

Container(
  width: double.infinity,
  padding: const EdgeInsets.symmetric( horizontal: 16,
  vertical: 16,),
   decoration: BoxDecoration(color: Colors.white,
   borderRadius: BorderRadius.circular(12),
   ),
   child: Row(
    children: [ 
      const Icon(Icons.phone, 
      color: Color.fromARGB(255, 22, 168, 151),),
      const SizedBox(width: 15,),
      const Text('+9 5411 2345 6789', style: TextStyle(fontSize: 15,),)
    ],
   ),
),
  const SizedBox(height: 14,),
     Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12), 
      ),
     child: Row(
      children: [
        Icon(Icons.email,
        color: Colors.teal,),
        SizedBox(width: 15,),
        Text('shahd@email.com',
        style: TextStyle(fontSize: 15),)
      ],
    ),
     ),
            ],
          ),
        ),
      ),
    );
  }
}