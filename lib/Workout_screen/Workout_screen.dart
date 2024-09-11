import 'package:flutter/material.dart';

import '../home_screen/homescreen.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout',style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => Homescreen() ));
          },
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              // Workout Title
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0),
                child: Text(
                  'Let\'s Get Started!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),


              _buildWorkoutCard(
                context,
                'Full Body Workout',
                Icons.fitness_center,
                'https://via.placeholder.com/60x60.png?text=Full+Body',
              ),
              const SizedBox(height: 20),

              _buildWorkoutCard(
                context,
                'Cardio Session',
                Icons.run_circle,
                'https://via.placeholder.com/60x60.png?text=Cardio',
              ),
              const SizedBox(height: 20),

              _buildWorkoutCard(
                context,
                'Strength Training',
                Icons.sports_mma,
                'https://via.placeholder.com/60x60.png?text=Strength',
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildWorkoutCard(
      BuildContext context, String title, IconData icon, String imageUrl) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Colors.purple.withOpacity(0.1),
          child: Icon(icon, color: Colors.purple, size: 40),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
