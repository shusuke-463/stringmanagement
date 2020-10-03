import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:string_management/main_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
                          Text(
                            '編集',
                            style: TextStyle(
                            color: Colors.red,
                            ),
                            ),
                          ],
                       ),
                      ),
                    ],
                  ),
                );
            }
          ),
          // This trailing comma makes auto-formatting nicer for build methods.
          ),
      ),
      );
  }
}
