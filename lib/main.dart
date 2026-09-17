 import 'package:flutter/material.dart';


 import  'api_app/todos screenl.dart';
void main() {
  runApp(const MyApp());
}
   
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodosScreen(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.black,
    body: SafeArea(
    child: Center(
    child: SingleChildScrollView(
    child: Container(
       width: 450,
       margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
   ),

    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [

       ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
       'https://www.baseusksa.com/cdn/shop/files/baseus-bowie-h1i-noise-cancellation-wireless-headphones-10_1200x.jpg?v=1729064800',
        width: double.infinity,
           height: 370,
       fit: BoxFit.contain,
    ),
      ),
    const SizedBox(height: 25),
        const Text('Beats Studio Pro',style: TextStyle( fontSize: 32, fontWeight: FontWeight.bold, ),
   ),
     const SizedBox(height: 15),
       const Text('\$349.99', style: TextStyle(  fontSize: 22,fontWeight: FontWeight.bold, ),
   ),
       const SizedBox(height: 25),
       Wrap( spacing: 6,
           runSpacing: 8,
           children: [
         _feature('USB C'),
         _feature('Noise Cancelling'),
         _feature('Transparency Mode'),
        ],
       ),   
      const SizedBox(height: 25),
         const Text( 'High-fidelity lossless audio via USB-C footnote1',
          style: TextStyle(
          fontSize: 16,
     ),
   ),
        const SizedBox(height: 15),
        const Text( 'Active Noise Cancelling and Transparency mode',
        style: TextStyle(
        fontSize: 16, ),
     ),
        const SizedBox(height: 15),
       const Text( 'Up to 40 hours of listening time footnote3',
        style: TextStyle(
        fontSize: 16, ),
     ),
         const SizedBox(height: 25),
            
                  Row(
         children: [
        Expanded(
        child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric( vertical: 18,),
         shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(8),
    ),
 ),
        child: const Text('Add to card', style: TextStyle( fontSize: 17, ),
       ),
     ),
   ),

       const SizedBox(width: 15),

       Expanded(
       child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 18,),
        side: const BorderSide(
        color: Colors.black,
         width: 2, ),
         shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(8),
      ),
   ),
          child: const Text( 'View Details',style: TextStyle( fontSize: 17,
          ),
         ),
       ),
      ),
     ],
    ),
   ],
     ),
   ),
      ), 
     ),
   ),
  );
}

       static Widget _feature(String text) {
       return Container(
       padding: const EdgeInsets.symmetric( horizontal: 15, vertical: 9 ), 
       decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),
       child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
      ),
    );
  }
}