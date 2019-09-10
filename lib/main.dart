import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 64,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 12,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(12, 10, 0, 8),
                        padding: EdgeInsets.only(left: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.grey[300],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              helperStyle: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 140,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Top Categories',
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'show all',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[
                                CategoryItem(
                                  url:
                                      'https://flaticons.net/gd/makefg.php?i=icons/Food/Cheese-01.png&r=255&g=255&b=255',
                                  width: 28,
                                  text: 'Mexican',
                                ),
                                CategoryItem(
                                  url:
                                      'https://flaticons.net/gd/makefg.php?i=icons/Food/Pizza-02.png&r=255&g=255&b=255',
                                  width: 28,
                                  text: 'Pizza',
                                ),
                                CategoryItem(
                                  url:
                                      'https://flaticons.net/gd/makefg.php?i=icons/Food/Fruit-Lemon.png&r=255&g=255&b=255',
                                  width: 28,
                                  text: 'Asia',
                                ),
                                CategoryItem(
                                  url:
                                      'https://flaticons.net/gd/makefg.php?i=icons/Food/Soup-01.png&r=255&g=255&b=255',
                                  width: 28,
                                  text: 'Burgers',
                                ),
                                CategoryItem(
                                  url:
                                      'https://flaticons.net/gd/makefg.php?i=icons/Food/Cheese-01.png&r=255&g=255&b=255',
                                  width: 28,
                                  text: 'Mexican',
                                ),
                                CategoryItem(
                                  url:
                                      'https://flaticons.net/gd/makefg.php?i=icons/Food/Pizza-02.png&r=255&g=255&b=255',
                                  width: 28,
                                  text: 'Pizza',
                                ),
                                CategoryItem(
                                  url:
                                      'https://flaticons.net/gd/makefg.php?i=icons/Food/Fruit-Lemon.png&r=255&g=255&b=255',
                                  width: 28,
                                  text: 'Asia',
                                ),
                                CategoryItem(
                                  url:
                                      'https://flaticons.net/gd/makefg.php?i=icons/Food/Cheese-01.png&r=255&g=255&b=255',
                                  width: 28,
                                  text: 'Mexican',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, top: 12, bottom: 8),
                    child: Text(
                      'Recommended for you',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: foods.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 140,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          margin:
                              EdgeInsets.only(left: 8, right: 8, bottom: 15),
                          padding: EdgeInsets.all(7),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 7,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7.0),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        foods[index].imgPath,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 15,
                                child: Container(
                                  margin: EdgeInsets.only(left: 14),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 8,
                                            child: Text(
                                              foods[index].title,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                              flex: 2,
                                              child: IconButton(
                                                icon: foods[index].isLike
                                                    ? Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      )
                                                    : Icon(
                                                        Icons.favorite_border,
                                                        color: Colors.red,
                                                      ),
                                                onPressed: () {
                                                  setState(() {
                                                    foods[index].isLike =
                                                        !foods[index].isLike;
                                                  });
                                                },
                                              )),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        foods[index].food,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black.withOpacity(0.6),
                                        ),
                                      ),
                                      Text(
                                        foods[index].price,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Spacer(),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 3,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Row(
                                                  children: _stars(),
                                                ),
                                                Text(
                                                  '${foods[index].reviewCount} reviews',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: foods[index].freeDelivery
                                                ? Container(
                                                    height: 18,
                                                    decoration: BoxDecoration(
                                                      color: Colors.orange,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'free delivery',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                : Container(),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _stars() {
    List<Widget> widgets = List();
    for (var i = 0; i < 4; i++) {
      widgets.add(Icon(
        Icons.star,
        color: Colors.orange,
        size: 18,
      ));
    }
    widgets.add(Icon(
      Icons.star,
      color: Colors.grey,
      size: 18,
    ));
    return widgets;
  }
}

class CategoryItem extends StatelessWidget {
  final url;
  final double width;
  final text;
  const CategoryItem({Key key, this.url, this.width, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange[200],
            ),
            child: Center(
              child: Image.network(
                url,
                width: width,
                height: width,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class FoodItem {
  String imgPath;
  String title;
  String food;
  String price;
  int reviewCount;
  bool isLike;
  bool freeDelivery;

  FoodItem(
      {this.imgPath,
      this.title,
      this.food,
      this.price,
      this.reviewCount,
      this.isLike = false,
      this.freeDelivery = false});
}

List<FoodItem> foods = [
  FoodItem(
    imgPath:
        'https://cdn.pixabay.com/photo/2017/11/13/03/56/grilled-pineapple-pork-burrito-2944562__340.jpg',
    title: 'Paco fish taco and more',
    food: "Seafood, Mexican, fish tacos",
    price: "min, order \$15.00",
    reviewCount: 157,
    isLike: true,
  ),
  FoodItem(
    imgPath:
        'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395__340.jpg',
    title: 'The Kitchen',
    food: "Pizza, burgers, fries",
    price: "min, order \$10.00",
    reviewCount: 122,
    freeDelivery: true,
  ),
  FoodItem(
    imgPath:
        'https://cdn.pixabay.com/photo/2018/09/21/18/25/fillet-3693670__340.jpg',
    title: 'Joe and sons grill steak house',
    food: "Ameraican, steak, ribs",
    price: "min, order \$10.00",
    reviewCount: 98,
  ),
  FoodItem(
    imgPath:
        'https://cdn.pixabay.com/photo/2017/11/13/03/56/grilled-pineapple-pork-burrito-2944562__340.jpg',
    title: 'Paco fish taco and more',
    food: "Seafood, Mexican, fish tacos",
    price: "min, order \$15.00",
    reviewCount: 157,
    isLike: true,
  ),
  FoodItem(
    imgPath:
        'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395__340.jpg',
    title: 'The Kitchen',
    food: "Pizza, burgers, fries",
    price: "min, order \$10.00",
    reviewCount: 122,
    freeDelivery: true,
  ),
  FoodItem(
    imgPath:
        'https://cdn.pixabay.com/photo/2018/09/21/18/25/fillet-3693670__340.jpg',
    title: 'Joe and sons grill steak house',
    food: "Ameraican, steak, ribs",
    price: "min, order \$10.00",
    reviewCount: 98,
  ),
  FoodItem(
    imgPath:
        'https://cdn.pixabay.com/photo/2017/11/13/03/56/grilled-pineapple-pork-burrito-2944562__340.jpg',
    title: 'Paco fish taco and more',
    food: "Seafood, Mexican, fish tacos",
    price: "min, order \$15.00",
    reviewCount: 157,
    isLike: true,
  ),
  FoodItem(
    imgPath:
        'https://cdn.pixabay.com/photo/2017/12/09/08/18/pizza-3007395__340.jpg',
    title: 'The Kitchen',
    food: "Pizza, burgers, fries",
    price: "min, order \$10.00",
    reviewCount: 122,
    freeDelivery: true,
  ),
  FoodItem(
    imgPath:
        'https://cdn.pixabay.com/photo/2018/09/21/18/25/fillet-3693670__340.jpg',
    title: 'Joe and sons grill steak house',
    food: "Ameraican, steak, ribs",
    price: "min, order \$10.00",
    reviewCount: 98,
  ),
];
