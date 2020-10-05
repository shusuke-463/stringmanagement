import 'package:string_management/book_list_page.dart';
import 'package:string_management/main_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
        title: 'String_management',
        home: ChangeNotifierProvider<MainModel>(
          create: (_) => MainModel(),
          child: Scaffold(
            appBar: AppBar(
            title: Text('ストリング管理蝶'),
            ),
            body: Consumer<MainModel>(
              builder: (context, model, child) {
                return Container(
                width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    DefaultTextStyle(
                        style: TextStyle(
                        fontSize: 40,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        ),
                        child: Column(
                        children: [
                            Text(
                              model.mainText,
                              ),
                            RaisedButton(
                              child: Text('編集'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => BookList()),
                                );
                              },
                              ),
                            ],
                         ),
                        ),
                      ],
                    ),
                  );
              },
            ),
            // This trailing comma makes auto-formatting nicer for build methods.
            ),
        ),
        );
  }
}
