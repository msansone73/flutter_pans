import 'package:flutter/material.dart';
import 'package:flutter_pans/main.dart';
import 'package:flutter_pans/pages/contatos_page.dart';
import 'package:flutter_pans/pages/map_page.dart';
import 'package:flutter_pans/pages/my_home_page.dart';
import 'package:flutter_pans/pages/promo_page.dart';

class PansButtonBar extends StatelessWidget {
  const PansButtonBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            color: Theme.of(context).primaryColorLight,
            child: Icon(
              Icons.home,
              size: 50,
              color: Colors.black,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            ),
          ),
          FlatButton(
            color: Theme.of(context).primaryColorLight,
            child: Icon(
              Icons.face,
              size: 50,
              color: Colors.black,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContatosPage()),
            ),
          ),
          FlatButton(
            color: Theme.of(context).primaryColorLight,
            child: Icon(
              Icons.monetization_on,
              size: 50,
              color: Colors.black,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PromoPage()),
            ),
          ),
          FlatButton(
            color: Theme.of(context).primaryColorLight,
            child: Icon(
              Icons.location_on,
              size: 50,
              color: Colors.black,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MapPage()),
            ),
          ),
          FlatButton(
            color: Theme.of(context).primaryColorLight,
            child: Icon(
              Icons.fastfood,
              size: 50,
              color: Colors.black,
            ),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MapPage()),
            ),
          ),
        ],
      ),
    );
  }
}
