import 'package:flutter/material.dart';

void main() => runApp(Project());

class Project extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Project'),
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: RadialGradient(
                    center: const Alignment(0, 0.8),
                    radius: 1.5,
                    colors: [
                  const Color(0xFF7F04AB),
                  const Color(0xFF00063A),
                ])),
          ),
          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.only(
                top: 680, left: MediaQuery.of(context).size.width * 0.5 - 40),
            child: FloatingActionButton(
              child: Icon(
                Icons.add,
                size: 70,
                color: const Color(0xFF00063A),
              ),
              backgroundColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewProject()),
                );
              },
            ),
          )
        ]));
  }
}

class NewProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Project"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
