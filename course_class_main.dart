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
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Column( //can also be Row, it is the same on the other axis
            //mainAxisSize: MainAxisSize.min, //riduce la lunghezza della colonna alla fine dei children
            //verticalDirection: VerticalDirection.up, //li fa partire dal basso, rovesciando l'ordine
            //verticalDirection: VerticalDirection.down, //li fa partire dall'alto, default
            //mainAxisAlignment: MainAxisAlignment.start, //default, iniziano in alto
            //mainAxisAlignment: MainAxisAlignment.end, //mantiene l'ordine e li trasla sul limite inferiore
            //mainAxisAlignment: MainAxisAlignment.center, //manitiene l'ordine, li posiziona al centro
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly, //li mette equidistanti nello spazio disponibile
            //mainAxisAlignment: MainAxisAlignment.spaceBetween, //ne mette uno all'inizio, uno al centro e uno alla fine
            //crossAxisAlignment: CrossAxisAlignment.end, //si allineano sul bordo di sinistra dei child, si vede se i containers hanno dimensioni diverse
            crossAxisAlignment: CrossAxisAlignment.stretch, //per far riempire orizzontalmente tutto lo spazio diponibile ai container
            children: <Widget>[
              Container(
                height: 100.0,
                //width: double.infinity,
                margin: EdgeInsets.only(left: 10.0), //per il container
                padding: EdgeInsets.all(20.0), //per il text dentro il container
                color: Colors.white,
                child: Text('Container 1'),
              ),
              SizedBox(
                height: 20.0, //se uso Row anzichè Column, dovrò specificare width anzichè height
              ),
              Container(
                //width:double.infinity,
                height: 100.0,
                margin: EdgeInsets.only(left: 10.0), //per il container
                padding: EdgeInsets.all(20.0), //per il text dentro il container
                color: Colors.teal,
                child: Text('Container 2')
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                //width:double.infinity,
                height: 100.0,
                margin: EdgeInsets.only(left: 10.0), //per il container
                padding: EdgeInsets.all(20.0), //per il text dentro il container
                color: Colors.blue,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
