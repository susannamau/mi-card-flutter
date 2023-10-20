import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  get height => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              SizedBox(
                height: 170.0,
              ),
              CircleAvatar(
                radius: 50.0,
                //backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/susi.png'),
              ),
              Text(
                'Susanna Maugeri',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                )
              ),
              Text(
                  'DREAM DEVELOPER',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.teal.shade100,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SourceSans',
                    letterSpacing: 2.5,
                  )
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100
                )
              ),
              Card(
                //padding: EdgeInsets.all(10.0),
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal.shade700,
                    ),
                    title: Text(
                      '+39 333 111 22 33',
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SourceSans',
                        fontSize: 20.0,
                      ),
                    ),
                  )
                )
              ),
              Card(
                  //padding: EdgeInsets.all(10.0),
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal.shade700,
                      ),
                      title: Text(
                        'susanna@gmail.com',
                        style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'SourceSans',
                          fontSize: 20.0,
                        ),
                      )
                    )
                  )
              ),
            ],
          )
        ),
      ),
    );
  }
}
