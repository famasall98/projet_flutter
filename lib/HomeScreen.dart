import 'package:flutter/material.dart';
import 'package:projet_flutter/FoodDetail1.dart';
import 'package:projet_flutter/FoodDetail2.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF7F7F7),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/image1.png'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deliver to',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      'Your Destination',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF46474B)),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 21,
                      width: 21,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/icons/Notif.png",
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      top: -5,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color(0xFFEC994B),
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Container(
                  height: 21,
                  width: 21,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icons/menu.png",
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's find your best",
                style: TextStyle(
                    color: Color(0xFF46474B),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "favorite food!",
                style: TextStyle(
                    color: Color(0xFF46474B),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                color: Color(0xFFEC994B),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding:  EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/image2.png',
                        width: 160,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Special for you',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            SizedBox(height: 3),
                            Text(
                              'Fried Noodles With Special Chicken Katsu',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 3),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF46474B),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             // SizedBox(height: 10),
              SectionTitle(title: 'Popular'),
              //SizedBox(height: 5),
              Text("See the most popular food on order",
                style: TextStyle(
                  color: Color(0xFFC5C4CB),
                  fontSize: 12,
                ),
              ),
              // SizedBox(height: 10),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 35,
                mainAxisSpacing: 35,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FoodDetail1()),
                      );
                    },
                    child: FoodCard(
                      image: 'assets/images/image3.png',
                      title: 'Special Pizza',
                      subtitle: 'With tomato sauce',
                      price: '\$12.50',
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FoodDetail2()),
                      );
                    },
                    child: FoodCard(
                      image: 'assets/images/image5.png',
                      title: 'Special Dimsum',
                      subtitle: 'With meat filling',
                      price: '\$8.95',
                    ),
                  ),
                ],
              ),
               //SizedBox(height: 6),
              SectionTitle(title: 'New Menu'),
              Text(
                "See the most popular food on order",
                style: TextStyle(
                  color: Color(0xFFC5C4CB),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/home.png', 
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/search.png',
              height: 24, 
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/heart.png',
              height: 24, 
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/user.png',
              height: 24, 
              width: 24,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Container(
          child:TextButton(
              onPressed: () {
                 Navigator.pushNamed(context, 'ALIfried');
              },
          child:Text('See All',
          style: TextStyle(
            color: Color(0xFFEC994B),
            decoration: TextDecoration.underline, 
            decorationColor:Color(0xFFEC994B),
           decorationThickness: 2,     
            fontSize: 14,
          ),
        ),
        ),
    ),
      ],
    );
  }
}

class FoodCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  FoodCard({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           // Container(
              // decoration: BoxDecoration(
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image,
                height: 95,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            
            ),
           // SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Color(0xFFEC994B),
                    borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/icons/plus.png",
                      ),
                      fit: BoxFit.contain,
                    ),                 
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
