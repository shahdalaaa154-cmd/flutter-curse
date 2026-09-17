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
      title: 'Balanced Meal',
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffff5b0a),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1498837167922-ddd27525d352?w=1200',
            fit: BoxFit.cover,
          ),

          Container(
            color: Colors.black.withOpacity(0.45),
          ),

          Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),

                Column(
                  children: [
                    const Text(
                      'Balanced Meal',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 230),

                    const Text(
                      'Craft your ideal meal effortlessly\n'
                      'with our app. Select nutritious\n'
                      'ingredients tailored to your taste\n'
                      'and well-being.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        height: 1.4,
                      ),
                    ),

                    const SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const DetailsScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffff5b0a),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Order Food',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String? gender;

  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Details'),
        backgroundColor: const Color(0xffff5b0a),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Tell us about yourself',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff222222),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'Gender',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              DropdownButtonFormField<String>(
                value: gender,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xfff1f2f5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                hint: const Text('Select gender'),
                items: const [
                  DropdownMenuItem(
                    value: 'Male',
                    child: Text('Male'),
                  ),
                  DropdownMenuItem(
                    value: 'Female',
                    child: Text('Female'),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),

              const SizedBox(height: 25),

              const Text(
                'Weight',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your weight',
                  filled: true,
                  fillColor: const Color(0xfff1f2f5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'Height',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              TextField(
                controller: heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your height',
                  filled: true,
                  fillColor: const Color(0xfff1f2f5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                'Age',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter your age',
                  filled: true,
                  fillColor: const Color(0xfff1f2f5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 35),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if (gender != null &&
                        weightController.text.isNotEmpty &&
                        heightController.text.isNotEmpty &&
                        ageController.text.isNotEmpty) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const OrderScreen(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffff5b0a),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class Food {
  final String name;
  final String category;
  final String image;
  final int calories;
  final double price;

  Food({
    required this.name,
    required this.category,
    required this.image,
    required this.calories,
    required this.price,
  });
}


class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<Food> foods = [
    Food(
      name: 'Bell Pepper',
      category: 'Vegetables',
      image:
          'https://images.unsplash.com/photo-1563565375-f3fdfdbefa83?w=500',
      calories: 12,
      price: 12,
    ),
    Food(
      name: 'Carrot',
      category: 'Vegetables',
      image:
          'https://images.unsplash.com/photo-1445282768818-728615cc910a?w=500',
      calories: 12,
      price: 12,
    ),
    Food(
      name: 'Lean Beef',
      category: 'Meats',
      image:
          'https://images.unsplash.com/photo-1603048297172-c92544798d5a?w=500',
      calories: 12,
      price: 12,
    ),
    Food(
      name: 'Salmon',
      category: 'Meats',
      image:
          'https://images.unsplash.com/photo-1467003909585-2f8a72700288?w=500',
      calories: 12,
      price: 12,
    ),
    Food(
      name: 'Sweet Corn',
      category: 'Carbs',
      image:
          'https://images.unsplash.com/photo-1551754655-cd27e38d2076?w=500',
      calories: 12,
      price: 12,
    ),
    Food(
      name: 'Brown Rice',
      category: 'Carbs',
      image:
          'https://images.unsplash.com/photo-1536304993881-ff6e9eefa2a6?w=500',
      calories: 12,
      price: 12,
    ),
  ];

  
          
  }
