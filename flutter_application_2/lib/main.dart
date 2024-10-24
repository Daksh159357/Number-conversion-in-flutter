import 'package:flutter/material.dart';

void main() {
  runApp(AshtaChammaApp());
}

class AshtaChammaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ashta Chamma',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GameBoardScreen(),
    );
  }
}

class GameBoardScreen extends StatefulWidget {
  @override
  _GameBoardScreenState createState() => _GameBoardScreenState();
}

class _GameBoardScreenState extends State<GameBoardScreen> {
  // Placeholder for the game board state
  List<List<String>> board =
      List.generate(8, (_) => List.generate(8, (_) => ''));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ashta Chamma'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ashta Chamma Game Board',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            buildGameBoard(),
          ],
        ),
      ),
    );
  }

  Widget buildGameBoard() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(8, (row) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(8, (col) {
              return Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: (row + col) % 2 == 0 ? Colors.brown : Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(board[row][col]),
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}
