import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Background Image
              Container(
                child: Image(
                  image: AssetImage('images/rainforest.jpg'),
                ),
              ),
              //Profile Pic, Name
              ListTile(
                tileColor: Colors.brown[600],
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                leading: CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('images/sloth_app_icon.jpg'),
                ),
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.blueGrey[500],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'George the Sloth',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          fontFamily: 'ConcertOne',
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.date_range,
                        color: Colors.red[200],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '01-01-20',
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontFamily: 'ConcertOne',
                          letterSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Blog Content
              Card(
                color: Colors.brown[300],
                margin: EdgeInsets.all(15.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        'Lazy Day',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'ConcertOne',
                          letterSpacing: 2.5,
                        ),
                      ),
                      SizedBox(
                        child: Divider(
                          color: Colors.brown[900],
                        ),
                      ),
                      Text(
                          " Sapien eget mi proin sed libero enim. Sodales ut eu sem integer vitae justo eget magna. Nulla facilisi nullam vehicula ipsum. Sed turpis tincidunt id aliquet risus feugiat in. Amet est placerat in egestas erat imperdiet sed euismod. Turpis egestas pretium aenean pharetra magna ac placerat vestibulum. Posuere morbi leo urna molestie at elementum eu facilisis sed. Mattis enim ut tellus elementum sagittis vitae. Quam pellentesque nec nam aliquam sem. Elementum curabitur vitae nunc sed velit dignissim sodales ut eu. \nAccumsan in nisl nisi scelerisque eu. Enim facilisis gravida neque convallis a. Duis at tellus at urna. Etiam non quam lacus suspendisse faucibus interdum posuere lorem ipsum. Aenean et tortor at risus viverra adipiscing. Nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi. Sit amet porttitor eget dolor. Id velit ut tortor pretium viverra suspendisse. Risus in hendrerit gravida rutrum quisque. Faucibus interdum posuere lorem ipsum dolor sit amet consectetur adipiscing."),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
