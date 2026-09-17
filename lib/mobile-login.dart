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
        children: [
          SizedBox(
           width: double.infinity,
           height: double.infinity,
            child: Image.asset(
              'assets/images/plants.jpg',
              fit: BoxFit.cover,
            ),
          ),
         

          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.spa,
                  color: Colors.white,
                  size: 30,
                ),

                const SizedBox(height: 50),

                const Text(
                  'PlantSHOP',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 63, 109, 11),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
            
              // Logo
              Center(
                child: Column(
                  children: [
                    const Icon(
                      Icons.spa,
                      color: Colors.black,
                      size: 30,
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      'PlantSHOP',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
             
              const SizedBox(height: 20),

              const Center(
                child: Text(
                  'Sign in to your account',
                  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 27, 68, 28),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Email
              const Text(
                'Email Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),

              const SizedBox(height: 10),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email address',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Password
              const Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),

              const SizedBox(height: 10),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                 suffixIcon: const Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.grey,
                 ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              
              Align(
                alignment: Alignment.centerRight,
                child: TextButton( 
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                   style: TextStyle(
                   color: Colors.grey,
                   ),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(value: false, onChanged: (value)  {},
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "I've read and agreed to User Agreement\n"
                        "and Privacy Policy",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // Sign in button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 39, 92, 40),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Sign in'),
                ),
              ),

              const SizedBox(height: 10),

              // Other way
              const Center(
                child: Text(
                  'other way to sign in',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),
          const SizedBox(height: 10),

              // Google and Facebook
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialButton('G'),
                  const SizedBox(width: 10),
                  _socialButton('f'),
                ],
              ),

              const SizedBox(height: 20),

              // Create account
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          color: Color.fromARGB(255, 38, 90, 40),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }

  static Widget _socialButton(String text) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: text == 'f'
                ? Colors.blue
                : Colors.red,
          ),
        ),
      ),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    const Icon(
                      Icons.spa,
                      color: Colors.black,
                      size: 30,
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      'PlantSHOP',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Title
              const Center(
                child: Text(
                  'Crete new account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 29, 75, 31),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Email
              const Text(
                'Email Address',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
          const SizedBox(height: 10),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email address',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Password
              const Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),

              const SizedBox(height: 10),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  suffixIcon: const Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.grey,
                 ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Confirm Password
              const Text(
                'Confirm Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),

              const SizedBox(height: 10),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your confirm password',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  suffixIcon: const Icon(
                  Icons.visibility_off_outlined,
                  color: Colors.grey,
                 ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Agreement
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(value:false, onChanged:(value) {},
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "I've read and agreed to User Agreement\n"
                        "and Privacy Policy",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // Sign up button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 33, 99, 35),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Sign up'),
                ),
              ),

              const SizedBox(height: 10),

              // Other way
              const Center(
                child: Text(
                  'other way to sign in',
                  style: TextStyle(
                    color: Colors.grey,
               fontSize: 10,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _socialButton('G'),
                  const SizedBox(width: 10),
                  _socialButton('f'),
                ],
              ),

              const SizedBox(height: 20),

              // Back to sign in
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Back to Sign In',
                        style: TextStyle(
                          color: Color.fromARGB(255, 31, 70, 32),
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _socialButton(String text) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: text == 'f'
                ? Colors.blue
                : Colors.red,
          ),
        ),
      ),
    );
  }
}