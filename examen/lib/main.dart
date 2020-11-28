import 'package:flutter/material.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _showPerfomanceOverlay = false;

  @override
  Widget build(BuildContext context) {
    Widget seccionComedy = Container(
      color: Colors.pink,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/comedy.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              'Comedy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );

    Widget seccionArt = Container(
      color: Colors.yellow[600],
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/art.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              'Art & Experimental',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );

    Widget seccionCats = Container(
      color: Colors.blue[700],
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/cats.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              'Cats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );

    Widget seccionDogs = Container(
      color: Colors.deepPurple[300],
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'images/dogs.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              'Dogs',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Color color1 = Colors.yellowAccent;

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color1, Icons.star, 'Popular Now'),
          _buildButtonColumn(color, Icons.arrow_upward, 'On The Rise'),
        ],
      ),
    );

    return MaterialApp(
      showPerformanceOverlay: _showPerfomanceOverlay,
      debugShowCheckedModeBanner: false,
      title: 'Explore',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.camera_roll),
            onPressed: null,
          ),
          title: Text('Explore'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.remove_red_eye),
              onPressed: null,
            ),
          ],
        ),
        body: ListView(
          children: [
            search(),
            buttonSection,
            SizedBox(
              height: 15,
            ),
            seccionComedy,
            seccionArt,
            seccionCats,
            seccionDogs,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget search() {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Search people or tags',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
