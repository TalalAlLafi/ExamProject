import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: Icon(
              Icons.movie,
              size: 150,
              color: Colors.deepPurple,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'The Movie Database (TMDb) is a community built movie and TV database. Every piece of data has been added by our amazing community dating back to 2008. TMDb’s strong international focus and breadth of data is largely unmatched and something we’re incredibly proud of. Put simply, we live and breathe community and that’s precisely what makes us different',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontFamily: 'Roboto'),
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text(
              'STATS',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, color: Colors.deepPurple),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(4, (index) {
                return Card(
                  child: Text(
                    'text',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.black26),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
