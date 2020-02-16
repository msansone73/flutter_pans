import 'package:flutter/material.dart';
import 'package:flutter_pans/pages/page_base.dart';

class ContatosPage extends StatelessWidget {
  const ContatosPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageBase(
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            Text(
              'Faça seu login...',
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Login',
                  labelStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Senha',
                  labelStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Divider(),
            RaisedButton(
              color: Theme.of(context).primaryColorDark,
              onPressed: () {},
              child: Text('LOGAR'),
            ),
          ],
        ),
      ),
    );
  }
}
