import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pans/widgets/pans_button_bar.dart';
import 'package:flutter_pans/widgets/select_image.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key, String title}) : super(key: key);

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
                  children: <Widget>[
                    CarouselSlider(
                      height: 200.0,
                      items: [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration:
                                  BoxDecoration(color: Theme.of(context).primaryColorLight),
                              child: selectImage(
                                index: i,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/site_pans_experience_menor.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
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
