import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  Result(this.totalScore, this.resetHandler);
  String get resultPhrase{
    var resultText = 'You did it !';
    if(totalScore <= 35){
      resultText = 'You are awesome and innocent';
    }else if(totalScore <=40 ){
      resultText = 'Pretty likeable';
    }else if(totalScore <= 100){
      resultText = 'You are ... strange';
    }else{
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget> [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text('Restart Quiz'),
            textColor: Colors.cyan,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
