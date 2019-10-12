import 'package:flutter/material.dart';
import './widgets/usertransaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // String titleInput;
  // String amountInput;
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        actions: <Widget>[

          IconButton(icon: Icon(Icons.add),onPressed: (){ },),
        ],
      ),
      body:SingleChildScrollView(
      child:Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Chart!'),
              elevation: 5,
            ),
          ),
          UserTransaction()
        ],
      ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),onPressed: (){},

      ),
    );
  }
}
