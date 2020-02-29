import 'package:flutter/material.dart';
import 'about.dart';
class MoviesListPage extends StatefulWidget {
  @override
  _MoviesListPageState createState() => _MoviesListPageState();
}

class _MoviesListPageState extends State<MoviesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              color: Colors.white,
              icon: Icon(Icons.info),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AboutPage())),
            )
          ],
          backgroundColor: Colors.deepPurpleAccent,
          title: Text("Movies List"),
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              Container(
                color: Colors.deepPurple,
                child: ListTile(
                  title: Text(
                    "Ahemd Hussain",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  subtitle: Text("mail@example.com",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
              new ListTile(
                leading: Icon(
                  Icons.movie_filter,
                  size: 40,
                ),
                title: Text("Top Movies"),
              ),
              new ListTile(
                leading: Icon(
                  Icons.info_outline,
                  size: 40,
                ),
                title: Text("About"),
              ),
              SizedBox(height: 500),
              new ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  size: 40,
                ),
                title: Text("Sign Out"),
              ),
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            SizedBox(height: 20),
            Container(
              width: 320,
              height: 80,
              color: Colors.grey[300],
              child: ListTile(
                leading: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('assets/01.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                title: Text(
                  "Wellcome Back, Ahmed",
                  style: TextStyle(fontSize: 20, color: Colors.black87),
                ),
                subtitle: Text("mail@example.com",
                    style: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 60,
              child: ListTile(
                leading: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('assets/02.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                title: Text("Parasyte"),
                trailing: Text('10/10'),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 60,
              width: 60,
              child: ListTile(
                leading: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('assets/03.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                title: Text("Irishman"),
                trailing: Text('8/10'),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 60,
              width: 60,
              child: ListTile(
                leading: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: new AssetImage('assets/04.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                title: Text("Avangers"),
                trailing: Text('7/10'),
              ),
            ),
          ],
        ));
  }
}
