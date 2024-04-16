import 'package:flutter/material.dart';
import 'quote/quote.dart';
import 'quote/qoute_card.dart';

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Shani', text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'rajarajeshwari',
        text: 'I have nothing to declare except my genius'),
    Quote(author: 'akki', text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Quote',style: TextStyle(
          color: Colors.white,),),
        centerTitle: true,
        backgroundColor: Colors.black
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(

          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}