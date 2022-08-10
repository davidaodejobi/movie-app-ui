import 'package:flutter/material.dart';

import 'home.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              gradient: RadialGradient(
            colors: [
              Color(0xFFE51313),
              Colors.black,
            ],
            radius: 0.6,
            stops: [
              0.1,
              1.5,
            ],
            center: Alignment.bottomRight,
          )),
          child: Column(
            children: [
              SizedBox(
                height: 450,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/camera.png',
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 210,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33),
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/marvel.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 210,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/rrr.jpg',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 210,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/last.jpg',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('Entertainment\nwhat you want.',
                  style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text('Download and watch offline\nacross the world wide.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  )),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(3),
                  width: 130,
                  height: 45,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF082EB4),
                        Color(0xFF640707),
                      ],
                      stops: [
                        0.2,
                        1.0,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(33),
                    color: Colors.white,
                  ),
                  child: Container(
                    width: 120,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(33),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text('Sign Up',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          )),
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
