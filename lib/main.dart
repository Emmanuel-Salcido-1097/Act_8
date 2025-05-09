import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco.jpg?raw=true'),
                    fit: BoxFit.cover),
              ),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Banamen, la mejor opcion para ti",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                            hintText: "Busca el banco mas cerca de ti ..."),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Mejor valorado",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco1.jpg?raw=true',
                            title: 'México'),
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco2.jpg?raw=true',
                            title: 'Francia'),
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco3.jpg?raw=true',
                            title: 'España'),
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco4.jpg?raw=true',
                            title: 'Estados Unidos')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Mayor accesibilidad",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco3.jpg?raw=true',
                            title: 'España'),
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco4.jpg?raw=true',
                            title: 'Estados Unidos'),
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco5.jpg?raw=true',
                            title: 'Canada'),
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco6.jpg?raw=true',
                            title: 'Reino Unido')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Popular",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco7.jpg?raw=true',
                            title: 'Brazil'),
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco6.jpg?raw=true',
                            title: 'Reino Unido'),
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco4.jpg?raw=true',
                            title: 'Estados Unidos'),
                        makeItem(
                            image:
                                'https://github.com/Emmanuel-Salcido-1097/P8MisImagenes6I/blob/main/banco3.jpg?raw=true',
                            title: 'España'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
