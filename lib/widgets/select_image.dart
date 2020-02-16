
import 'package:flutter/material.dart';

class selectImage extends StatelessWidget {
  int index;

  selectImage({int index}) {
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    if (index == 1) {
      return Image(
        image: AssetImage('assets/images/frango_assado_brie.png'),
      );
    } else if (index == 2) {
      return Image(
        image: AssetImage('assets/images/mozzarela_pesto.png'),
      );
    } else if (index == 3) {
      return Image(
        image: AssetImage('assets/images/pulled_pork_bbq.png'),
      );
    } else if (index == 4) {
      return Image(
        image: AssetImage('assets/images/salmao_guacamole.png'),
      );
    } else if (index == 5) {
      return Image(
        image: AssetImage('assets/images/mozzarela_pesto.png'),
      );
    }
  }
}
