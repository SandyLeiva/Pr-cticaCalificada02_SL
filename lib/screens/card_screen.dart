
import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      appBar: AppBar(
        title: const Text('Card Widget'),
        foregroundColor: Colors.white, 
      ),
      body: ListView(
        padding: const EdgeInsets.only(right: 8, left: 8),
        children: const[
          Card01Lab(),
          SizedBox(height: 10),
          Card02Lab(),
          SizedBox(height: 10),
          Card03Lab(),
        ],
      ),    
    );
  }
}

