import 'package:flutter/material.dart';

import 'quote.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wild 1',
        sentence: 'Lorem ipsum dolor amet,  adipiscing elit 1.'),
    Quote(
        author: 'Oscar Wild 2',
        sentence: 'Lorem ipsum consectetur adipiscing 2.'),
    Quote(
        author: 'Oscar Wild 3',
        sentence: 'Ipsum  amet, adipiscing elit 3.'),
    Quote(
        author: 'Oscar Wild 4',
        sentence: 'Lorem ipsum amet, consectetur 4.'),
    Quote(
        author: 'Oscar Wild 5',
        sentence: 'Lorem ipsum dolor amet, consectetur  elit 5.')
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.sentence,
                style: TextStyle(fontSize: 18.0, color: Colors.grey[600])),
            const SizedBox(height: 6.0),
            Text(quote.author,
                style: TextStyle(fontSize: 14.0, color: Colors.grey[800])),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: quotes
            //.map((quote) => Text('${quote.sentence} - ${quote.author}'))
            .map((quote) => quoteTemplate(quote))
            .toList(),
      ),
    );
  }
}
