import 'package:flutter/material.dart';

class WellcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const SingleChildScrollView();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 25),
          Expanded(
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Image.asset('asset/images/login_page4.png'),
                  ),
                ),

                Container(
                  child: const Text(
                    "Zip Compressor",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 20, 68, 149),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                  child: const Column(
                    children: [
                      Text(
                        "Image, Video, Audio and Text.",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 20, 68, 149),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                //There are the Buttons.....

                MaterialButton(
                  onPressed: () {
                    print('Sign Up');
                  },
                  height: 47,
                  minWidth: 200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 27, 80, 173)),
                  ),
                  color: Color.fromARGB(255, 249, 250, 252),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 15, 95, 235),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                MaterialButton(
                  onPressed: () {
                    // print('Login');
                  },
                  height: 47,
                  minWidth: 200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 18, 89, 213)),
                  ),
                  color: const Color.fromARGB(255, 27, 80, 173),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
