import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home',
         style: TextStyle(
          color: Colors.white)),
        backgroundColor:
         Colors.pinkAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push('/settings'),
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
          child: Text('Go to Settings', style: TextStyle(color: Colors.white,fontSize: 18)),
        ),
      ),
    );
  }
}
