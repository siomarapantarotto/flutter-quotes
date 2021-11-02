import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function() deleteQuote;

  QuoteCard({required this.quote, required this.deleteQuote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(14.0, 14.0, 14.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.sentence,
                style: TextStyle(fontFamily: 'IndieFlower', fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.grey[600])),
            const SizedBox(height: 6.0),
            Text(quote.author,
                style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold)
            ),
            const SizedBox(height: 8.0),

            // ElevatedButton.icon(
            //   onPressed: deleteQuote,
            //   label: const Text('Delete quote'),
            //   icon: const Icon(Icons.delete),
            // ),

            IconButton(
              onPressed: deleteQuote,
              icon: const Icon(Icons.delete),
            ),

          ],
        ),
      ),
    );
  }
}
