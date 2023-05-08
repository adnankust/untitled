import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alphabet Learning',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: AlphabetList(),
    );
  }
}

class AlphabetList extends StatefulWidget{

  @override
  _AlphabetListState createState() => _AlphabetListState();

}

class _AlphabetListState extends State<AlphabetList> {
  final List<String> _alphabets = [
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
    'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V',
    'W', 'X', 'Y', 'Z'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar (
      title: Text('Alphabet Learning'),
    ),
      body: Center(
        child: ListView.builder(
          itemCount: _alphabets.length,
          itemBuilder: (context, index) {
            return Center(
              child: ListTile(
                title: Text(_alphabets[index]),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AlphabetDetail(alphabet: _alphabets[index]
                      ),
                      ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class AlphabetDetail extends StatelessWidget {
  final String alphabet;

  AlphabetDetail({required this.alphabet});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(alphabet),
      ),
      body: Center(
        child: Text(
          alphabet,
          style: TextStyle(fontSize: 200.0),
        ),
      ),
    );
  }
}
