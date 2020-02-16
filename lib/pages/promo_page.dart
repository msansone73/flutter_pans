
import 'package:flutter/material.dart';
import 'package:flutter_pans/pages/page_base.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageBase(
        body: Container(
          child: Center(
            child: Text('nenhuma promoção no momento.'),
          ),
        ),
      ),
    );
  }
}