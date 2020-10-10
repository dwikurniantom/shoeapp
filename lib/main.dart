import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:shoeapp/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.transparent,
          centerTitle: true,
          textTheme: TextTheme(
            title: TextStyle(color: Colors.deepPurple[900]),
          ),
          iconTheme: IconThemeData(color: Colors.deepPurple[900]),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          unselectedIconTheme: IconThemeData(
            color: Colors.grey,
          ),
          selectedIconTheme: IconThemeData(
            color: Colors.deepPurple[900],
          ),
        ),
      ),
      home: MyHomePage(title: 'Aplikasi test'),
      routes: <String, WidgetBuilder>{
        Detail.routeName: (BuildContext context) => new Detail(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentPage = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "X",
              style: TextStyle(fontSize: 24, color: Colors.deepPurple[900]),
            ),
            Text(
              "E",
              style: TextStyle(fontSize: 24, color: Colors.blue[300]),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Our Product",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Sort by",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/img/placeholder/shoes_placeholder.png",
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Sneakers",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/img/placeholder/watch_placeholder.png",
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Watch",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/img/placeholder/backpack_placeholder.png",
                        height: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Backpack",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 24,
              ),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.75,
              //childAspectRatio: 1.0,
              crossAxisCount: 2,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.pushNamed(context, Detail.routeName);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text(
                                    "10%",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                  size: 18,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red[100],
                                      shape: BoxShape.circle,
                                    ),
                                    height: 90,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      shape: BoxShape.circle,
                                    ),
                                    height: 80,
                                  ),
                                  Container(
                                    child: Image.asset(
                                      "assets/img/product/product_2.png",
                                      height: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Nike Air Max 20",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "\$",
                                    style: TextStyle(
                                      color: Colors.deepPurple[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "240.00",
                                    style: TextStyle(
                                      color: Colors.deepPurple[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.grey,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "(3.0)",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      shape: BoxShape.circle,
                                    ),
                                    height: 90,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      shape: BoxShape.circle,
                                    ),
                                    height: 80,
                                  ),
                                  Container(
                                    child: Image.asset(
                                      "assets/img/product/product_1.png",
                                      height: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Excee Sneaker",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "\$",
                                    style: TextStyle(
                                      color: Colors.deepPurple[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "260.00",
                                    style: TextStyle(
                                      color: Colors.deepPurple[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                  size: 18,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green[100],
                                      shape: BoxShape.circle,
                                    ),
                                    height: 90,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      shape: BoxShape.circle,
                                    ),
                                    height: 80,
                                  ),
                                  Container(
                                    child: Image.asset(
                                      "assets/img/product/product_3.png",
                                      height: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Air Max Motion 2",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "\$",
                                    style: TextStyle(
                                      color: Colors.deepPurple[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "290.00",
                                    style: TextStyle(
                                      color: Colors.deepPurple[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Text(
                                    "40%",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                  size: 18,
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.yellow[100],
                                      shape: BoxShape.circle,
                                    ),
                                    height: 90,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      shape: BoxShape.circle,
                                    ),
                                    height: 80,
                                  ),
                                  Container(
                                    child: Image.asset(
                                      "assets/img/product/product_4.png",
                                      height: 100,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "Leather Sneakers",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 6),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "\$",
                                    style: TextStyle(
                                      color: Colors.deepPurple[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    "270.00",
                                    style: TextStyle(
                                      color: Colors.deepPurple[900],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.amber,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 17,
                                  color: Colors.grey,
                                ),
                                Text(
                                  "(4.0)",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        index: _currentPage,
        height: 60,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.star, size: 30),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: (_currentPage == 2) ? Colors.deepPurple[900] : Colors.grey,
          ),
          Icon(Icons.featured_play_list_outlined, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          setState(() => _currentPage = index);
        },
      ),
      // bottomNavigationBar:
      // BottomNavigationBar(
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   currentIndex: _currentPage,
      //   onTap: (index) {
      //     setState(() {
      //       _currentPage = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text("Beranda"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.star),
      //       title: Text("Laporan"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart),
      //       title: Text("Penjualan"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.featured_play_list_outlined),
      //       title: Text("Persediaan"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       title: Text("Akun"),
      //     ),
      //   ],
      // ),
    );
  }
}

// boxShadow: [
//                       BoxShadow(
//                         color: Colors.blueGrey.withOpacity(0.2),
//                         spreadRadius: 1,
//                         blurRadius: 6,
//                         offset: Offset(0, 2),
//                       ),
//                     ],
