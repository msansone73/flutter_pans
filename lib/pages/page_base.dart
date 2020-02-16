import 'package:flutter/material.dart';
import 'package:flutter_pans/widgets/pans_button_bar.dart';

class PageBase extends StatelessWidget {

  PageBase({ Widget body}) 
  {
    this.body=body;
  }
  Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo_pans_menor.png',
          fit: BoxFit.scaleDown,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Theme.of(context).primaryColorLight,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    body,
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: PansButtonBar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}