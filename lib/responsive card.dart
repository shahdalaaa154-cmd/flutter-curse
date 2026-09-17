import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
      ),
      home: const ProductPage(),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
       

          child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 700) {
                return _mobileCard();
              }
              return _desktopCard();
            },

        ),
      ),
    );
  }

  Widget _desktopCard() {
    return Container(
      height: 200,
      constraints: const BoxConstraints(
        maxWidth: 700,
        minHeight: 400,
      ),
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [

          // IMAGE
          Expanded(
            flex: 5,
            child: Container(
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(10),
              child: Image.network(
                'https://www.baseusksa.com/cdn/shop/files/baseus-bowie-h1i-noise-cancellation-wireless-headphones-10_1200x.jpg?v=1729064800',
               
              ),
            ),
          ),

          const SizedBox(width: 10),

          // DETAILS
          Expanded(
            flex: 5,
            child: _productDetails(),
          ),
        ],
      ),
    );
  }

  Widget _mobileCard() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(18),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 280,
              width: double.infinity,

              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),

            ),

            const SizedBox(height: 20),

            _productDetails(),
          ],
        ),
      ),
    );
  }

  Widget _productDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          'Beats Studio Pro',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),

        const SizedBox(height: 12),

        const Text(
          '\$349.99',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
    ),

        const SizedBox(height: 12),

        Wrap(
          spacing: 5,
          runSpacing: 5,
          children: [
            _tag('USB C'),
            _tag('Noise Cancelling'),
            _tag('Transparency Mode'),
          ],
        ),

        const SizedBox(height: 12),

        const Text(
          'High-fidelity lossless audio via USB-Cfootnote1',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),

        const SizedBox(height: 12),

        const Text(
          'Active Noise Cancelling and Transparency mode',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),

        const SizedBox(height: 12),

        const Text(
          'Up to 40 hours of listening time footnote3',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),

        const SizedBox(height: 12),

        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 25,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Add to card',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: SizedBox(
                height: 25,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    side: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'View Details',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _tag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),

      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(8),
      ),

      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12,
        ),
      ),
    );
  }
}