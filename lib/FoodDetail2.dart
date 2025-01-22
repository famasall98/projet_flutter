import 'package:flutter/material.dart';

class FoodDetail2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F7F7),
        elevation: 0,
        title: Text(
          'Food Detail',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(          
           icon: ImageIcon(AssetImage('assets/icons/3points.png',
           ),),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: const EdgeInsets.all(11),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/image4.png', 
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                      Text(
                        'Special Dimsum',
                        style: TextStyle(
                          color: Color(0xFF46474B),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'With tommato sauce',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFC7C5C5),
                        ),
                      ),
                    ]),
                    SizedBox(width: 16),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFEC994B),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                            Container(
                                height: 2,
                                width: 9,
                                 decoration: BoxDecoration(
                                    color: Color(0xFFEC994B),
                                    image: DecorationImage(     
                                      image: AssetImage("assets/icons/Iconmoins.png"),
                                      fit: BoxFit.contain,
                                      ),                                      
                          ), 
                          ),
                          SizedBox(width: 5),
                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 5),
                           Container(
                                height: 9,
                                width: 9,
                                 decoration: BoxDecoration(
                                    color: Color(0xFFEC994B),
                                    image: DecorationImage(
                                      image: AssetImage("assets/icons/IconPlus.png"),
                                      fit: BoxFit.contain,
                                      ),                                     
                          ), 
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [                       
                        Container(                       
                         height: 24,
                         width: 24,
                         decoration: BoxDecoration(                       
                          image: DecorationImage(
                           image: AssetImage("assets/icons/Star.png",),
                           fit: BoxFit.contain,
                          ),    
                    ),
                ),
                        SizedBox(width: 8),
                        Text(
                          '4.3 Ratings',
                          style:
                              TextStyle(color: Color(0xFF46474B), fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(width: 140),
                    Row(
                      children: [
                        Container(
                       
                         height: 24,
                         width: 24,
                         decoration: BoxDecoration(
                          image: DecorationImage(
                           image: AssetImage("assets/icons/Comment.png",),
                           fit: BoxFit.contain,
                          )
                    ),
                ),
                        SizedBox(width: 8),
                        Text(
                          '960 Reviews',
                          style:
                              TextStyle(color: Color(0xFF46474B), fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  'Detail & Ingredient',
                  style: TextStyle(
                    color: Color(0xFF46474B),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Meat Lovers is filled with toppings of sliced beef sausage, minced beef, beef burger, and chicken sausage. In one bite, you can taste a variety of processed meats that are many and dense. Especially the minced meat which still has fiber in it.',
                  style: TextStyle(fontSize: 16.0, color: Color(0xFF46474B)),
                ),
                SizedBox(height: 10),
                Row(     
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BulletText(text: "Pepperoni"),
                    BulletText(text: "Oregano"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {},
        items: [
           BottomNavigationBarItem(
            icon: Image.asset(
             'assets/icons/home.png', 
            height: 24, 
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
class BulletText extends StatelessWidget {
  final String text;
  BulletText({required this.text});
  @override
  Widget build(BuildContext context) {
   return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
        Text(".",
        style: TextStyle(
            color: Color(0xFF46474B),
            fontSize: 25,

        ),),
        SizedBox(width: 5,),
        Text(text, style: TextStyle(
            color: Color(0xFF46474B), 
            fontSize: 16,
        ),)
    ],
   );
  }
}
