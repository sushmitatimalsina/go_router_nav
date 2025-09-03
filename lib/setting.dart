import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.pinkAccent,
        iconTheme: const IconThemeData(
          color: Colors.white, 
        ),
      ),
      body: Center(
        child:ElevatedButton(onPressed: () => context.pop(),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pinkAccent, 
            foregroundColor: Colors.white, 
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8,
              ), // optional: rounded corners
            ),
          ),
         child: const Text('Go Back'),
       
      ),
      )
    );
  }
}