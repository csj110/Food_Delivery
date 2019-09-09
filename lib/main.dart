import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
                      itemCount: 10,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 120,
                          margin:
                              EdgeInsets.only(left: 12, right: 12, bottom: 15),
                          child: Placeholder(),
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
