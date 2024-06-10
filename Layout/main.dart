import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wiiweb - Animal Search',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String searchTerm = "";
  List<Animal> animals = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wiiweb'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Search for an animal",
                icon: Icon(Icons.search),
              ),
              onChanged: (text) {
                setState(() {
                  searchTerm = text;
                });
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Implement search logic here (e.g., call an API)
              // Update animals list based on search results
            },
            child: Text('Search'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: animals.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(animals[index].name),
                  subtitle: Text(animals[index].species),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    // Navigate to animal details page
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Animal {
  String name;
  String species;
}
