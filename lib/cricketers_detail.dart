import 'package:flutter/material.dart';

class CricketersDetails extends StatefulWidget {
  const CricketersDetails({super.key});

  @override
  State<CricketersDetails> createState() => _CricketersDetailsState();
}

class _CricketersDetailsState extends State<CricketersDetails> {
  int numberOfMatchPlayed = 0;

  @override
  void initState() {
    super.initState();
    numberOfMatchPlayed = 300;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Cricketers Details'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Image.asset(
                "assets/images/duck.png",
                height: 200,
                width: 200,
              ),
              const Divider(
                height: 30,
                color: Colors.white38,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    letterSpacing: 2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Virat Kohli',
                  style: TextStyle(
                      color: Colors.yellow[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 2),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Age',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  letterSpacing: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '30',
                  style: TextStyle(
                      color: Colors.yellow[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 2),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Number of match played',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  letterSpacing: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$numberOfMatchPlayed',
                  style: TextStyle(
                      color: Colors.yellow[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      letterSpacing: 2),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[600],
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            numberOfMatchPlayed += 1;
          });
        },
      ),
    );
  }
}
