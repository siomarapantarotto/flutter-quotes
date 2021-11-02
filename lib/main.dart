//import 'dart:ui';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

List<Quote> quotes = [
  Quote(
      author: 'Paul Arden',
      sentence: 'The world is what you think of it, so think of it differently and your life will change.'),
  Quote(
      author: 'Stephen King',
      sentence: 'Amateurs sit and wait for inspiration, the rest of us just get up and go to work.'),
  Quote(
      author: 'Andre Gide',
      sentence: 'It is better to be hated for what you are than to be loved for what you are not.'),
  Quote(
      author: 'Denise Brennan-Nelson',
      sentence: 'Someday is not a day of the week.'),
  Quote(
      author: 'Peter Schutz',
      sentence: 'Hire character. Train skill.'),
  Quote(
      author: 'Steve Jobs',
      sentence: 'Your time is limited, so don\'t waste it living someone else\'s life.'),
  Quote(
      author: 'Robert Louis Stevenson',
      sentence: 'Everyone lives by selling something.'),
  Quote(
      author: 'Napoleon Hill',
      sentence: 'If you cannot do great things, do small things in a great way.'),
];

class _QuoteListState extends State<QuoteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  deleteQuote: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
