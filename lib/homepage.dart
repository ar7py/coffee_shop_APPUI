import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            elevation: 15.0,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.black,),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.coffee),
                label: 'Orders',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
            ]
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 15.0),
          children: [
            const SizedBox(height: 50.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Welcome, Username',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3c312e),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: const DecorationImage(
                        image: AssetImage('images/profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0,),
            const Padding(
              padding: EdgeInsets.only(right: 45.0),
              child: Text(
                'Let\'s Select The Best Taste For Your Next Coffee Break!',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF3c312e),
                ),
              ),
            ),
            const SizedBox(height: 25.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Taste Of The Week',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: Color(0xFF3c312e),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      color: Color(0xFF3c312e),
                    ),
                  ),
                ),
                ],
                ),
                const SizedBox(height: 15.0,),
                SizedBox(
                  height: 410.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      _coffeeListCard(
                        'images/coffeesb.png',
                        'Caffe Latte',
                        'CoffeeShop',
                        'Rich, full-boiled with milk sauce and steamed milk',
                        'INR 180',
                        false,
                      ),
                      _coffeeListCard(
                        'images/coffeehc.png',
                        'Caffe Latte',
                        'BrownHouse',
                        'Rich, full-boiled with milk sauce and steamed milk',
                        'INR 210',
                        false,
                      ),
                      _coffeeListCard(
                        'images/coffeecc.png',
                        'Caffe Latte',
                        'StarBucks',
                        'Rich, full-boiled with milk sauce and steamed milk',
                        'INR 240',
                        false,
                      ),
                      _coffeeListCard(
                        'images/coffee.png',
                        'Caffe Latte',
                        'StarBucks',
                        'Rich, full-boiled with milk sauce and steamed milk',
                        'INR 240',
                        false,
                      ),
                      _coffeeListCard(
                        'images/coffee-cup.png',
                        'Caffe Latte',
                        'StarBucks',
                        'Rich, full-boiled with milk sauce and steamed milk',
                        'INR 240',
                        false,
                      ),
                    ],
                  ),
                ),
            const SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Explore Nearby',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: Color(0xFF3c312e),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0,
                      color: Color(0xFF3c312e),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0,),
            SizedBox(
              height: 125.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildImage('images/coffeepic.jpg'),
                  _buildImage('images/coffeepic1.jpg'),
                  _buildImage('images/coffeepic2.jpg'),
                  _buildImage('images/coffeepic3.jpg'),
                ],
              ),
            ),
            const SizedBox(height: 20.0,),
              ],
            ),
        ),
    );
  }
}

_buildImage(String imgPath) {
  return Padding(
    padding: const EdgeInsets.only(right: 15.0),
    child: Container(
      height: 100.0,
      width: 175.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: AssetImage(imgPath),
          fit: BoxFit.cover,
        )
      ),
    ),
  );
}

// class Main extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) { // Here you have the context
//     return Center (
//       child: this._coffeeListCard("name", "imagePath", 0, context), // Here you pass the context
//     );
//   }
// }

Widget _coffeeListCard(String imgPath, String coffeeName, String shopName, String desc, String price, bool isFav) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
    child: SizedBox(
      height: 300.0,
      width: 225.0,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 335.0,
              ),
              Positioned(
                top: 75.0,
                child: Container(
                  padding: const EdgeInsets.only(left: 10.0, right: 20.0),
                  height: 260.0,width: 225.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: const Color(0xFFDAB68C),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60.0,),
                      Text(
                        shopName + '\'s',
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                      Text(
                        coffeeName,
                        style: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                      Text(
                        desc,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Text(
                              price,
                              style: const TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3A4742),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(Icons.favorite,
                                  color: isFav ? Colors.redAccent : Colors.grey,
                                  size: 25.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 60.0,
                top: 25.0,
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain,
                    )
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: (){},
            child: Container(
              height: 50.0,
              width: 225.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xFF473D3A),
              ),
              child: const Center(
                child: Text(
                  'ORDER NOW',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}