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

      ]),

      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 50,
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      



    );
  }
}

class NewProject extends StatelessWidget {

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final TextEditingController projectName = TextEditingController();
  final TextEditingController projectRequiremt = TextEditingController();
  final TextEditingController projectDeadline = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Project"),
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child: Container(
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(15.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.5,
                        style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0)
                      ),
                    ),
                    //prefixIcon: Icon(Icons.aspect_ratio),
                    labelText: "Project Name",
                  ),
                  maxLines: 1,
                ),

                const SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.5,
                        style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0)
                      ),
                    ),
                    //prefixIcon: Icon(Icons.list),
                    labelText: "Project Requirement",
                    alignLabelWithHint: true,
                    
                  ),
                  maxLines: 4,
                ),


              ],
            ),
            ),

          )
        )
      )
    );
  }
}
