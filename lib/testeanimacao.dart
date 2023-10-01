import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class TesteAnimacao1 extends StatelessWidget {
  const TesteAnimacao1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300.0,
                color: const Color(0xFF232426),
                padding: const EdgeInsets.all(16),
                child: Center(
                  child: const Text(
                    'Animate Me!',
                    style: TextStyle(color: Colors.white, fontSize: 36.0),
                  )
                      .animate(
                        //onPlay: (controller) => controller.repeat(),
                        onPlay: (controller) =>
                            controller.loop(count: 4, reverse: true),
                      )
                      .moveY(
                          begin: -25,
                          end: 15,
                          curve: Curves.easeInOut,
                          duration: 1000.ms,
                          delay: 1000.ms)
                      .scaleXY(end: 1.2)
                      .fadeIn()
                      .slide()
                      .shake(hz: 5)
                      .then()
                      .moveY(begin: 15, end: -20, curve: Curves.easeInOut),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
