import 'package:flutter/material.dart';

class ALIfried extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
       backgroundColor: Color(0xFFF7F7F7),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 100),
              child: Text('Cette Page Sera Bientot Disponile',
              style: TextStyle(
              color: Color(0xFF46474B),
              fontSize: 26,
              fontWeight: FontWeight.bold),
            ),
        ),
        SizedBox(height: 30,),
        Container( 
          
          child: Text('MERCI 🧀👋🏽',
           style: TextStyle(
            color: Color(0xFF797979),
            fontSize: 18,
           ), ),
        ),
        SizedBox(height: 40,),
        Container(
           child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'HomeScreen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFEC994B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 110),
              ),
              child: Text(
                "Go Back",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
        )
            ]
        ),
      ),
    );
  }
}
