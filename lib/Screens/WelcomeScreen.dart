//code optimisation done
import 'package:flutter/material.dart';
import '../CustomShapes/ShapeWelcomeOne.dart';
import 'appointment.dart';

class WelcomeScreen extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Image.asset(
              'lib/assets/welcomeDog.png',
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(height: 20,),
            const Text('Welcome',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Let\'s get you up and running, but we\'ll need some information first',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                      children: [
                        const Positioned(child: ShapeWelcomeOne()),
                        Positioned(
                          top: 20,
                          left: 140,
                          child: Row(
                            children: [
                              TextButton(
                              onPressed: (){
                        Navigator.pushNamed(context, '/signup');
                        },
                                child: const Text('CONTINUE',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 40,),
                              IconButton(onPressed: (){
                                Navigator.pushNamed(context, '/signup');
                              },
                                  icon: const Icon(Icons.arrow_forward_rounded, color: Colors.white,))
                            ],
                          ),)]
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
