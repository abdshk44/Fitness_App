import 'package:fitness_tracker_app/Progress_screen/progress_screen.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker_app/Workout_screen/Workout_screen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: const Text(
          'Fitness Tracker',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(
              title: Center(
                  child: const Text(
                'let\'s Start',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
              backgroundColor:
                  Colors.transparent, // Make the AppBar transparent
              elevation: 0, // Remove shadow
            ),
            const Text(
              'Welcome to Fitness Tracker!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Text color to stand out on gradient
              ),
            ),
            const SizedBox(height: 20),

            // Navigation to WorkoutScreen
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WorkoutScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade500,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'Start Workout',
                style: TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProgressScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade500,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                'View Progress',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Homescreen()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.fitness_center),
              color: Colors.white,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WorkoutScreen()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.pie_chart),
              color: Colors.white,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProgressScreen()),
                );
              },
            ),
          ],
        ),
        color: Colors.purple.shade700,
      ),
    );
  }
}
