import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awsome and inocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
              foregroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            child: Text('Restart Quiz!'),
            onPressed: resetHandler,
          ),
          // OutlinedButton(
          //   style: OutlinedButton.styleFrom(
          //       foregroundColor: Colors.blue,
          //       side: BorderSide(
          //         color: Colors.blue,
          //       )),
          //   child: Text('Just for test!'),
          //   onPressed: () => print('JUST TESTING!'),
          // )
        ],
      ),
    );
  }
}
