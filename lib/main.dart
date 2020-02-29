import 'package:flutter/material.dart';
import 'SplashScreen.dart';
import 'textfield.dart';
import 'moviesList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movies List",
      home: SplashScreen(),
    );
  }
}

class MoviesList extends StatefulWidget {
  @override
  _MoviesListState createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  LogIn(
                    icon: Icons.person,
                    hintText: "Email",
                  ),
                  SizedBox(height: 5),
                  LogIn(
                    icon: Icons.lock_outline,
                    hintText: "Password",
                  ),
                  SizedBox(height: 10),
                  ButtonTheme(
                    minWidth: 320.0,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MoviesListPage())),
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
