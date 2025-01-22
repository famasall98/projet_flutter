import 'package:flutter/material.dart';
class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF7F7F7),
      ),
      body: Center(
        child: Column(        
        children: [
          Center(
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 270,
                    height: 320,
                    decoration: BoxDecoration(
                      color: Color(0xFFEC994B),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(150),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Image.asset(
                      'assets/images/profil.png',
                      width: 300,
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 40,
                    child: 
                     CircleAvatar(
                     backgroundColor: Colors.white,
                     radius: 25,
                         child: Text(
                        'LUNCH TIME',
                        style: TextStyle(
                          color: Color(0xFFEC994B),
                          fontSize: 6,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    height: 40,
                  ),
                  Positioned(
                    top: 110,
                    right: 20,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 8,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 110,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 8,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 5,
                    child: 
                     Container(
                      height: 28.24,
                      width: 28.24,                     
                      decoration: BoxDecoration(
                        color: Color(0xFFEC994B),
                        borderRadius: BorderRadius.circular(5),                       
                        image: DecorationImage(                         
                          image: AssetImage(
                            "assets/icons/Clock.png",
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 0,
                    child: Container(
                      height: 29,
                      width: 29,                     
                      decoration: BoxDecoration(
                        color: Color(0xFFEC994B),
                        borderRadius: BorderRadius.circular(10),                       
                        image: DecorationImage(                         
                          image: AssetImage(
                            "assets/icons/truck.png",
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                  ),
                  Positioned(
                    bottom: -30,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFEC994B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 20,
                          height: 1,
                        ),
                        SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFEC994B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 20,
                          height: 1,
                        ),
                        SizedBox(width: 5),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFEC994B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 20,
                          height: 2.5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 85),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20), 
                Container(
                child:  Text(
                  "Don't Wanna Make You Have A Bad Day",
                  style: TextStyle(
                    color: Color(0xFF46474B),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: 
                   Text(
                  "Our job is delivering a delicious food with fast, free delivery and easy.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF797979),
                  ),
                ),
            ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                 Navigator.pushNamed(context, 'HomeScreen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFEC994B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 90),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
