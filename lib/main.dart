import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:firstapp/pages/Time_world.dart';
import 'pages/Home.dart';
import 'pages/choose_location.dart';
import 'pages/loading.dart';
import 'pages/quoteList.dart';
import 'pages/todos_page.dart';
import 'pages/note_page.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
      '/todo': (context) => TodosPage(),
      '/loading': (context) => loading(),
      '/quote': (context) => QuoteList(),
      '/time': (context) => timeWorld(),
      '/note': (context) => NotesPage(),
    }
  ));


