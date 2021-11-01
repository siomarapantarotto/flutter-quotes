import 'dart:ui';

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
        author: 'Paul Arden',
        sentence:
            'The world is what you think of it, so think of it differently and your life will change.'),
    Quote(
        author: 'Stephen King',
        sentence:
            'Amateurs sit and wait for inspiration, the rest of us just get up and go to work.'),
    Quote(
        author: 'Unknown writer',
        sentence:
            'Never sacrifice three things; your family, your heart and your dignity.'),
    Quote(
        author: 'Andre Gide',
        sentence:
            'It is better to be hated for what you are than to be loved for what you are not.'),
    Quote(
        author: 'Stephen Chbosky',
        sentence: 'We accept the love we think we deserve.'),
    Quote(
        author: 'Mahatma Gandhi',
        sentence: 'Where there is love there is life.')
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
                style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold)),
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
        backgroundColor: Colors.black54,
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
